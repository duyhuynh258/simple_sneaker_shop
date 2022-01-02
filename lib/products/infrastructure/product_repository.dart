import 'package:dartz/dartz.dart';
import 'package:simple_sneaker_shop/products/domain/product.dart';
import 'package:simple_sneaker_shop/products/domain/products_failure.dart';

class ProductRepository {
  Future<Either<ProductsFailure, List<Product>>> getProducts() async {
    return left(ProductsFailure.server());
  }
}
