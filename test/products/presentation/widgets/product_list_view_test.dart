import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:simple_sneaker_shop/products/presentation/widgets/widgets.dart';

import '../../../fixtures/products_fixture.dart';
import '../../../helpers/pump_app.dart';

void main() {
  testWidgets('render product list view', (WidgetTester tester) async {
    await mockNetworkImagesFor(() async {
      await tester.pumpApp(
          widget: Scaffold(
              body: ProductListView(
        ProductsFixture.twoProducts,
        isNextPageAvailable: false,
      )));
      await tester.pumpAndSettle();
      expect(find.byType(ProductPreviewCard), findsNWidgets(2));
    });
  });
}
