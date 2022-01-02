import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_sneaker_shop/products/application/products_notifier.dart';
import 'package:simple_sneaker_shop/products/infrastructure/product_repository.dart';

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository();
});

final productsNotifierProvider =
    StateNotifierProvider.autoDispose<ProductsNotifier, ProductsState>(
        (ref) => ProductsNotifier(ref.watch(productRepositoryProvider)));
