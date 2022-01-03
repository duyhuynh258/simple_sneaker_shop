import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_page_info_dto.freezed.dart';
part 'product_page_info_dto.g.dart';

@freezed
class ProductPageInfoDTO with _$ProductPageInfoDTO {
  const ProductPageInfoDTO._();
  const factory ProductPageInfoDTO({
    required int page,
    required int pageSize,
    required int totalCount,
  }) = _ProductPageInfoDTO;

  factory ProductPageInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductPageInfoDTOFromJson(json);
}
