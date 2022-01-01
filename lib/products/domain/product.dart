import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required Uuid uuid,
    required String name,
    required String description,
    required List<String> imageUrls,
    required bool justDropped,
    required bool active,
    required int rank,
  }) = _Product;

  const Product._();
}
