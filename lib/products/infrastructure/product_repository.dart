import 'package:dartz/dartz.dart';
import 'package:simple_sneaker_shop/core/core.dart';
import 'package:simple_sneaker_shop/products/domain/product.dart';
import 'package:simple_sneaker_shop/products/domain/products_failure.dart';
import 'package:simple_sneaker_shop/products/infrastructure/infrastructure.dart';

class ProductRepository {
  ProductRepository(this._productLocalService);

  final ProductRemoteService _productLocalService;

  Future<Either<ProductsFailure, PaginatedList<Product>>> getProductsPage(
      int page) async {
    try {
      final response = await _productLocalService.getProductsPage(page);

      return right(
        PaginatedList(
          data: response.data.map((e) => e.toDomain()).toList(),
          page: response.page,
          pageSize: response.pageSize,
          totalCount: response.totalCount,
        ),
      );
    } catch (e) {
      return left(ProductsFailure.server(message: e.toString()));
    }
  }
}
