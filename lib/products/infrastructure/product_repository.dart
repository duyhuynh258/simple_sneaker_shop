import 'package:dartz/dartz.dart';
import 'package:simple_sneaker_shop/products/domain/product.dart';
import 'package:simple_sneaker_shop/products/domain/products_failure.dart';
import 'package:simple_sneaker_shop/products/infrastructure/infrastructure.dart';

class ProductRepository {
  ProductRepository(this._productLocalService);

  final ProductLocalService _productLocalService;
  Future<Either<ProductsFailure, List<Product>>> getProducts() async {
    try {
      final allProducts = await _productLocalService.getProducts();
      return right(allProducts.map((e) => e.toDomain()).toList());
    } catch (e) {
      return left(ProductsFailure.server(message: e.toString()));
    }
  }
}
