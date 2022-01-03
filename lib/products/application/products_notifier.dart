import 'package:simple_sneaker_shop/products/application/application.dart';
import 'package:simple_sneaker_shop/products/infrastructure/product_repository.dart';

class ProductsNotifier extends PaginatedProductsNotifier {
  ProductsNotifier(this._productRepository);

  final ProductRepository _productRepository;

  /// Use for fist time load products.
  Future<void> getFirstProductsPage() async {
    super.resetState();
    await getNextStarredReposPage();
  }

  Future<void> getNextStarredReposPage() async {
    await super.getNextPage(_productRepository.getProductsPage);
  }
}
