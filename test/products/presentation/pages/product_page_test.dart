import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:simple_sneaker_shop/core/core.dart';
import 'package:simple_sneaker_shop/core/presentation/widgets/loading_view.dart';
import 'package:simple_sneaker_shop/products/domain/product.dart';
import 'package:simple_sneaker_shop/products/domain/products_failure.dart';
import 'package:simple_sneaker_shop/products/infrastructure/product_repository.dart';
import 'package:simple_sneaker_shop/products/presentation/pages/product_page.dart';
import 'package:simple_sneaker_shop/products/presentation/widgets/product_empty_view.dart';
import 'package:simple_sneaker_shop/products/presentation/widgets/product_list_view.dart';
import 'package:simple_sneaker_shop/products/presentation/widgets/products_load_failed_view.dart';
import 'package:simple_sneaker_shop/products/shared/providers.dart';

import '../../../fixtures/products_fixture.dart';
import '../../../helpers/pump_app.dart';

class MockProductRepository extends Mock implements ProductRepository {}

void main() {
  late ProductRepository mockProductRepository;
  late List<VoidCallback> tearOffCallbacks;

  final productsPageWith2Products = PaginatedList(
      data: ProductsFixture.twoProducts, page: 0, pageSize: 2, totalCount: 2);
  const productsEmptyPage =
      PaginatedList(data: <Product>[], page: 0, pageSize: 2, totalCount: 0);

  setUp(() {
    mockProductRepository = MockProductRepository();
    tearOffCallbacks = [];
  });

  tearDown(() {
    for (final callback in tearOffCallbacks) {
      callback();
    }
  });

  testWidgets(
      'render LoadingView and ProductListView when load products success.',
      (WidgetTester tester) async {
    await mockNetworkImagesFor(
      // Run your tests.
      () async {
        const getProductDuration = Duration(seconds: 2);
        when(() => mockProductRepository.getProductsPage(any())).thenAnswer(
            (invocation) => Future.delayed(getProductDuration,
                () async => right(productsPageWith2Products)));
        await tester.pumpApp(
          overrides: [
            productRepositoryProvider.overrideWithValue(mockProductRepository),
          ],
          widget: const ProductPage(),
        );

        await tester.pump();
        expect(find.byType(LoadingView), findsOneWidget);
        await tester.pump(getProductDuration);
        expect(find.byType(ProductListView), findsOneWidget);
      },
    );
  });

  testWidgets(
      'render LoadingView and EmptyProductView when load products success.',
      (WidgetTester tester) async {
    //arrange
    const getProductDuration = Duration(seconds: 2);
    when(() => mockProductRepository.getProductsPage(any())).thenAnswer(
        (invocation) => Future.delayed(
            getProductDuration, () async => right(productsEmptyPage)));
    await tester.pumpApp(
      overrides: [
        productRepositoryProvider.overrideWithValue(mockProductRepository),
      ],
      widget: const ProductPage(),
    );

    await tester.pump();
    expect(find.byType(LoadingView), findsOneWidget);
    await tester.pump(getProductDuration);
    expect(find.byType(ProductEmptyView), findsOneWidget);
  });

  testWidgets(
      'render ProductsLoadFailedView and when first load products failed.',
      (WidgetTester tester) async {
    //arrange
    const getProductDuration = Duration(seconds: 2);
    const ProductsFailure productsFailure = ProductsFailure.server();

    when(() => mockProductRepository.getProductsPage(any())).thenAnswer(
        (invocation) => Future.delayed(
            getProductDuration, () async => left(productsFailure)));
    await tester.pumpApp(
      overrides: [
        productRepositoryProvider.overrideWithValue(mockProductRepository),
      ],
      widget: const ProductPage(),
    );

    await tester.pump();
    expect(find.byType(LoadingView), findsOneWidget);
    await tester.pump(getProductDuration);
    expect(find.byType(ProductsLoadFailedView), findsOneWidget);
  });
}
