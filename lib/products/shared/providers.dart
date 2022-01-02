import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_sneaker_shop/products/application/products_notifier.dart';
import 'package:simple_sneaker_shop/products/infrastructure/infrastructure.dart';

final productLocalServiceProvider = Provider<ProductLocalService>((ref) {
  return ProductLocalService();
});

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository(ref.watch(productLocalServiceProvider));
});

final productsNotifierProvider =
    StateNotifierProvider.autoDispose<ProductsNotifier, ProductsState>(
        (ref) => ProductsNotifier(ref.watch(productRepositoryProvider)));
