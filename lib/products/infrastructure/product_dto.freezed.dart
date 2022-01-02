// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) {
  return _ProductDTO.fromJson(json);
}

/// @nodoc
class _$ProductDTOTearOff {
  const _$ProductDTOTearOff();

  _ProductDTO call(
      {required String uuid,
      required String name,
      required String description,
      required List<String> imageUrls,
      required bool justDropped,
      required bool isDeleted,
      required _Status status,
      required int rank}) {
    return _ProductDTO(
      uuid: uuid,
      name: name,
      description: description,
      imageUrls: imageUrls,
      justDropped: justDropped,
      isDeleted: isDeleted,
      status: status,
      rank: rank,
    );
  }

  ProductDTO fromJson(Map<String, Object?> json) {
    return ProductDTO.fromJson(json);
  }
}

/// @nodoc
const $ProductDTO = _$ProductDTOTearOff();

/// @nodoc
mixin _$ProductDTO {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  bool get justDropped => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  _Status get status => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDTOCopyWith<ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDTOCopyWith<$Res> {
  factory $ProductDTOCopyWith(
          ProductDTO value, $Res Function(ProductDTO) then) =
      _$ProductDTOCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String name,
      String description,
      List<String> imageUrls,
      bool justDropped,
      bool isDeleted,
      _Status status,
      int rank});
}

/// @nodoc
class _$ProductDTOCopyWithImpl<$Res> implements $ProductDTOCopyWith<$Res> {
  _$ProductDTOCopyWithImpl(this._value, this._then);

  final ProductDTO _value;
  // ignore: unused_field
  final $Res Function(ProductDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrls = freezed,
    Object? justDropped = freezed,
    Object? isDeleted = freezed,
    Object? status = freezed,
    Object? rank = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      justDropped: justDropped == freezed
          ? _value.justDropped
          : justDropped // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as _Status,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductDTOCopyWith<$Res> implements $ProductDTOCopyWith<$Res> {
  factory _$ProductDTOCopyWith(
          _ProductDTO value, $Res Function(_ProductDTO) then) =
      __$ProductDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String name,
      String description,
      List<String> imageUrls,
      bool justDropped,
      bool isDeleted,
      _Status status,
      int rank});
}

/// @nodoc
class __$ProductDTOCopyWithImpl<$Res> extends _$ProductDTOCopyWithImpl<$Res>
    implements _$ProductDTOCopyWith<$Res> {
  __$ProductDTOCopyWithImpl(
      _ProductDTO _value, $Res Function(_ProductDTO) _then)
      : super(_value, (v) => _then(v as _ProductDTO));

  @override
  _ProductDTO get _value => super._value as _ProductDTO;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrls = freezed,
    Object? justDropped = freezed,
    Object? isDeleted = freezed,
    Object? status = freezed,
    Object? rank = freezed,
  }) {
    return _then(_ProductDTO(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      justDropped: justDropped == freezed
          ? _value.justDropped
          : justDropped // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as _Status,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDTO extends _ProductDTO {
  const _$_ProductDTO(
      {required this.uuid,
      required this.name,
      required this.description,
      required this.imageUrls,
      required this.justDropped,
      required this.isDeleted,
      required this.status,
      required this.rank})
      : super._();

  factory _$_ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDTOFromJson(json);

  @override
  final String uuid;
  @override
  final String name;
  @override
  final String description;
  @override
  final List<String> imageUrls;
  @override
  final bool justDropped;
  @override
  final bool isDeleted;
  @override
  final _Status status;
  @override
  final int rank;

  @override
  String toString() {
    return 'ProductDTO(uuid: $uuid, name: $name, description: $description, imageUrls: $imageUrls, justDropped: $justDropped, isDeleted: $isDeleted, status: $status, rank: $rank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDTO &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrls, imageUrls) &&
            const DeepCollectionEquality()
                .equals(other.justDropped, justDropped) &&
            const DeepCollectionEquality().equals(other.isDeleted, isDeleted) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.rank, rank));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrls),
      const DeepCollectionEquality().hash(justDropped),
      const DeepCollectionEquality().hash(isDeleted),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(rank));

  @JsonKey(ignore: true)
  @override
  _$ProductDTOCopyWith<_ProductDTO> get copyWith =>
      __$ProductDTOCopyWithImpl<_ProductDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDTOToJson(this);
  }
}

abstract class _ProductDTO extends ProductDTO {
  const factory _ProductDTO(
      {required String uuid,
      required String name,
      required String description,
      required List<String> imageUrls,
      required bool justDropped,
      required bool isDeleted,
      required _Status status,
      required int rank}) = _$_ProductDTO;
  const _ProductDTO._() : super._();

  factory _ProductDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductDTO.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  String get description;
  @override
  List<String> get imageUrls;
  @override
  bool get justDropped;
  @override
  bool get isDeleted;
  @override
  _Status get status;
  @override
  int get rank;
  @override
  @JsonKey(ignore: true)
  _$ProductDTOCopyWith<_ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
