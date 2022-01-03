import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_sneaker_shop/products/application/application.dart';
import 'package:simple_sneaker_shop/products/infrastructure/infrastructure.dart';

final productLocalServiceProvider = Provider<ProductRemoteService>((ref) {
  return ProductRemoteService();
});

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository(ref.watch(productLocalServiceProvider));
});

final productsNotifierProvider =
    StateNotifierProvider.autoDispose<ProductsNotifier, PaginatedProductsState>(
        (ref) => ProductsNotifier(ref.watch(productRepositoryProvider)));
