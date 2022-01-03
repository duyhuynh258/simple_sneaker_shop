// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_page_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductPageInfoDTO _$ProductPageInfoDTOFromJson(Map<String, dynamic> json) {
  return _ProductPageInfoDTO.fromJson(json);
}

/// @nodoc
class _$ProductPageInfoDTOTearOff {
  const _$ProductPageInfoDTOTearOff();

  _ProductPageInfoDTO call(
      {required int page, required int pageSize, required int totalCount}) {
    return _ProductPageInfoDTO(
      page: page,
      pageSize: pageSize,
      totalCount: totalCount,
    );
  }

  ProductPageInfoDTO fromJson(Map<String, Object?> json) {
    return ProductPageInfoDTO.fromJson(json);
  }
}

/// @nodoc
const $ProductPageInfoDTO = _$ProductPageInfoDTOTearOff();

/// @nodoc
mixin _$ProductPageInfoDTO {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductPageInfoDTOCopyWith<ProductPageInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPageInfoDTOCopyWith<$Res> {
  factory $ProductPageInfoDTOCopyWith(
          ProductPageInfoDTO value, $Res Function(ProductPageInfoDTO) then) =
      _$ProductPageInfoDTOCopyWithImpl<$Res>;
  $Res call({int page, int pageSize, int totalCount});
}

/// @nodoc
class _$ProductPageInfoDTOCopyWithImpl<$Res>
    implements $ProductPageInfoDTOCopyWith<$Res> {
  _$ProductPageInfoDTOCopyWithImpl(this._value, this._then);

  final ProductPageInfoDTO _value;
  // ignore: unused_field
  final $Res Function(ProductPageInfoDTO) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductPageInfoDTOCopyWith<$Res>
    implements $ProductPageInfoDTOCopyWith<$Res> {
  factory _$ProductPageInfoDTOCopyWith(
          _ProductPageInfoDTO value, $Res Function(_ProductPageInfoDTO) then) =
      __$ProductPageInfoDTOCopyWithImpl<$Res>;
  @override
  $Res call({int page, int pageSize, int totalCount});
}

/// @nodoc
class __$ProductPageInfoDTOCopyWithImpl<$Res>
    extends _$ProductPageInfoDTOCopyWithImpl<$Res>
    implements _$ProductPageInfoDTOCopyWith<$Res> {
  __$ProductPageInfoDTOCopyWithImpl(
      _ProductPageInfoDTO _value, $Res Function(_ProductPageInfoDTO) _then)
      : super(_value, (v) => _then(v as _ProductPageInfoDTO));

  @override
  _ProductPageInfoDTO get _value => super._value as _ProductPageInfoDTO;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_ProductPageInfoDTO(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductPageInfoDTO extends _ProductPageInfoDTO {
  const _$_ProductPageInfoDTO(
      {required this.page, required this.pageSize, required this.totalCount})
      : super._();

  factory _$_ProductPageInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductPageInfoDTOFromJson(json);

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'ProductPageInfoDTO(page: $page, pageSize: $pageSize, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductPageInfoDTO &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(totalCount));

  @JsonKey(ignore: true)
  @override
  _$ProductPageInfoDTOCopyWith<_ProductPageInfoDTO> get copyWith =>
      __$ProductPageInfoDTOCopyWithImpl<_ProductPageInfoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductPageInfoDTOToJson(this);
  }
}

abstract class _ProductPageInfoDTO extends ProductPageInfoDTO {
  const factory _ProductPageInfoDTO(
      {required int page,
      required int pageSize,
      required int totalCount}) = _$_ProductPageInfoDTO;
  const _ProductPageInfoDTO._() : super._();

  factory _ProductPageInfoDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductPageInfoDTO.fromJson;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$ProductPageInfoDTOCopyWith<_ProductPageInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
