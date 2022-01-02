import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:simple_sneaker_shop/products/domain/product.dart';
import 'package:simple_sneaker_shop/products/domain/products_failure.dart';
import 'package:simple_sneaker_shop/products/infrastructure/product_repository.dart';

part 'products_notifier.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  const ProductsState._();

  const factory ProductsState.initial(
      {@Default(<Product>[]) List<Product> products}) = _Initial;

  const factory ProductsState.loadInProgress({
    @Default(<Product>[]) List<Product> products,
  }) = _LoadInProgress;

  const factory ProductsState.loadSuccess({
    required List<Product> products,
  }) = _LoadSuccess;

  const factory ProductsState.loadFailure({
    @Default(<Product>[]) List<Product> products,
    required ProductsFailure failure,
  }) = _LoadFailure;
}

class ProductsNotifier extends StateNotifier<ProductsState> {
  ProductsNotifier(this._productRepository)
      : super(const ProductsState.initial());

  final ProductRepository _productRepository;

  /// Use for fist time load products.
  Future<void> loadProducts() async {
    state = const ProductsState.loadInProgress();
    final failureOrProducts = await _productRepository.getProducts();
    state = failureOrProducts.fold((l) {
      return ProductsState.loadFailure(failure: l);
    }, (r) {
      //Success
      return ProductsState.loadSuccess(products: r);
    });
  }
}
