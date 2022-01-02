import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_sneaker_shop/products/products.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDTO with _$ProductDTO {
  const factory ProductDTO({
    required String uuid,
    required String name,
    required String description,
    required List<String> imageUrls,
    required bool justDropped,
    required bool isDeleted,
    required _Status status,
    required int rank,
  }) = _ProductDTO;

  const ProductDTO._();

  factory ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDTOFromJson(json);
}

enum _Status { active, inactive }

extension ProductDTOToDomain on ProductDTO {
  Product toDomain() {
    return Product(
        uuid: uuid,
        name: name,
        description: description,
        imageUrls: imageUrls,
        justDropped: justDropped,
        active: status == _Status.active,
        rank: rank);
  }
}
