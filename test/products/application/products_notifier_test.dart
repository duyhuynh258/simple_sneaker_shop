import 'package:flutter_test/flutter_test.dart';
import 'package:simple_sneaker_shop/products/application/products_notifier.dart';

void main() {
  group('Test products_notifier', () {
    test('should has initial state', () {
      expect(ProductsNotifier().debugState, const ProductsState.initial());
    });
  });
}
