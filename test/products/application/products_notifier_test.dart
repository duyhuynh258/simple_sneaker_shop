import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_sneaker_shop/products/application/products_notifier.dart';
import 'package:simple_sneaker_shop/products/domain/products_failure.dart';
import 'package:simple_sneaker_shop/products/infrastructure/product_repository.dart';

import '../../fixtures/products_fixture.dart';

class MockProductRepository extends Mock implements ProductRepository {}

void main() {
  late ProductRepository mockProductRepository;
  late ProductsNotifier sut;

  setUp(() {
    mockProductRepository = MockProductRepository();
    sut = ProductsNotifier(mockProductRepository);
  });

  void arrangeRepositoryReturn2Products() {
    when(() => mockProductRepository.getProducts()).thenAnswer(
        (invocation) => Future.value(right(ProductsFixture.twoProducts)));
  }

  group('Test products_notifier', () {
    test('should has initial state', () {
      expect(sut.debugState, const ProductsState.initial());
    });

    group('loadProducts', () {
      test('should emit loading state', () {
        //arrange
        arrangeRepositoryReturn2Products();

        //assert
        expectLater(
          sut.stream,
          emits(
            const ProductsState.loadInProgress(),
          ),
        );

        //act
        sut.loadProducts();
      });

      test('should call repository', () async {
        //arrange
        arrangeRepositoryReturn2Products();

        //act
        await sut.loadProducts();

        //assert
        verify(mockProductRepository.getProducts).called(1);
      });

      test('should emit success state when load successfully', () async {
        //arrange
        arrangeRepositoryReturn2Products();

        //act
        await sut.loadProducts();

        //assert
        expect(sut.debugState,
            ProductsState.loadSuccess(products: ProductsFixture.twoProducts));
      });

      test('should emit failure state when load failed', () async {
        //arrange
        const ProductsFailure failure = ProductsFailure.server();
        when(() => mockProductRepository.getProducts())
            .thenAnswer((invocation) => Future.value(left(failure)));

        //act
        await sut.loadProducts();

        //assert
        expect(
            sut.debugState, const ProductsState.loadFailure(failure: failure));
      });
    });
  });
}
