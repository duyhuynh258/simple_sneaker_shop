import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_sneaker_shop/core/presentation/widgets/loading_view.dart';
import 'package:simple_sneaker_shop/products/infrastructure/product_repository.dart';
import 'package:simple_sneaker_shop/products/presentation/pages/product_page.dart';
import 'package:simple_sneaker_shop/products/presentation/widgets/product_list_view.dart';
import 'package:simple_sneaker_shop/products/shared/providers.dart';

import '../../../fixtures/products_fixture.dart';
import '../../../helpers/pump_app.dart';

class MockProductRepository extends Mock implements ProductRepository {}

void main() {
  late ProductRepository mockProductRepository;
  late List<VoidCallback> tearOffCallbacks;
  setUp(() {
    mockProductRepository = MockProductRepository();
    tearOffCallbacks = [];
  });
  tearDown(() {
    for (final callback in tearOffCallbacks) {
      callback();
    }
  });

  void addTearDown(VoidCallback tearOffFunction) {
    tearOffCallbacks.add(tearOffFunction);
  }

  Future<void> arrangeProductPageWithMockRepository(WidgetTester tester) async {
    await tester.pumpApp(
      overrides: [
        productRepositoryProvider.overrideWithValue(mockProductRepository),
      ],
      widget: const ProductPage(),
    );
  }

  testWidgets(
      'render LoadingView and ProductListView when load products success.',
      (WidgetTester tester) async {
    //arrange
    // `when` setup must stand before pumpApp
    const getProductDuration = Duration(seconds: 2);
    when(() => mockProductRepository.getProducts()).thenAnswer((invocation) =>
        Future.delayed(
            getProductDuration, () async => right(ProductsFixture.products)));
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
    await tester.pumpAndSettle();
  });
}
