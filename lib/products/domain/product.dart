import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required String uuid,
    required String name,
    required String description,
    required List<String> imageUrls,
    required bool justDropped,
    required bool active,
    required int rank,
  }) = _Product;

  const Product._();
}
