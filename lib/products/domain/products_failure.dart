import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_failure.freezed.dart';

@freezed
class ProductsFailure with _$ProductsFailure {
  const ProductsFailure._();
  const factory ProductsFailure.server({String? message}) = _Server;
}
