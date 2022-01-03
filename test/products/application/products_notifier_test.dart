import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_sneaker_shop/core/core.dart';
import 'package:simple_sneaker_shop/products/application/application.dart';
import 'package:simple_sneaker_shop/products/domain/products_failure.dart';
import 'package:simple_sneaker_shop/products/infrastructure/product_repository.dart';

import '../../fixtures/products_fixture.dart';

class MockProductRepository extends Mock implements ProductRepository {}

void main() {
  late ProductRepository mockProductRepository;
  late ProductsNotifier sut;
  final productsPageWith2Products = PaginatedList(
      data: ProductsFixture.twoProducts, page: 0, pageSize: 2, totalCount: 2);

  setUp(() {
    mockProductRepository = MockProductRepository();
    sut = ProductsNotifier(mockProductRepository);
  });

  void arrangeRepositoryReturn2Products() {
    when(() => mockProductRepository.getProductsPage(any())).thenAnswer(
        (invocation) => Future.value(right(productsPageWith2Products)));
  }

  group('Test products_notifier', () {
    test('should has initial state', () {
      expect(sut.debugState, const PaginatedProductsState.initial());
    });

    group('getFirstProductsPage', () {
      test('should emit loading state', () {
        //arrange
        arrangeRepositoryReturn2Products();

        //assert
        expectLater(
          sut.stream,
          emits(
            const PaginatedProductsState.loadInProgress(),
          ),
        );

        //act
        sut.getFirstProductsPage();
      });

      test('should call repository', () async {
        //arrange
        arrangeRepositoryReturn2Products();

        //act
        await sut.getFirstProductsPage();

        //assert
        verify(() => mockProductRepository.getProductsPage(any())).called(1);
      });

      test('should emit success state when load successfully', () async {
        //arrange
        arrangeRepositoryReturn2Products();

        //act
        await sut.getFirstProductsPage();

        //assert
        expect(
          sut.debugState,
          PaginatedProductsState.loadSuccess(
            products: ProductsFixture.twoProducts,
            itemsPerPage: 2,
            isNextPageAvailable: false,
          ),
        );
      });

      test('should emit failure state when load failed', () async {
        //arrange
        const ProductsFailure failure = ProductsFailure.server();
        when(() => mockProductRepository.getProductsPage(any()))
            .thenAnswer((invocation) => Future.value(left(failure)));

        //act
        await sut.getFirstProductsPage();

        //assert
        expect(
            sut.debugState,
            const PaginatedProductsState.loadFailure(
                failure: failure, isNextPageAvailable: false));
      });
    });
  });
}
