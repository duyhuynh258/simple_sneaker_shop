// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {required Uuid uuid,
      required String name,
      required String description,
      required List<String> imageUrls,
      required bool justDropped,
      required bool active,
      required int rank}) {
    return _Product(
      uuid: uuid,
      name: name,
      description: description,
      imageUrls: imageUrls,
      justDropped: justDropped,
      active: active,
      rank: rank,
    );
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  Uuid get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  bool get justDropped => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {Uuid uuid,
      String name,
      String description,
      List<String> imageUrls,
      bool justDropped,
      bool active,
      int rank});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrls = freezed,
    Object? justDropped = freezed,
    Object? active = freezed,
    Object? rank = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Uuid,
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
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {Uuid uuid,
      String name,
      String description,
      List<String> imageUrls,
      bool justDropped,
      bool active,
      int rank});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrls = freezed,
    Object? justDropped = freezed,
    Object? active = freezed,
    Object? rank = freezed,
  }) {
    return _then(_Product(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Uuid,
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
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Product extends _Product {
  const _$_Product(
      {required this.uuid,
      required this.name,
      required this.description,
      required this.imageUrls,
      required this.justDropped,
      required this.active,
      required this.rank})
      : super._();

  @override
  final Uuid uuid;
  @override
  final String name;
  @override
  final String description;
  @override
  final List<String> imageUrls;
  @override
  final bool justDropped;
  @override
  final bool active;
  @override
  final int rank;

  @override
  String toString() {
    return 'Product(uuid: $uuid, name: $name, description: $description, imageUrls: $imageUrls, justDropped: $justDropped, active: $active, rank: $rank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrls, imageUrls) &&
            const DeepCollectionEquality()
                .equals(other.justDropped, justDropped) &&
            const DeepCollectionEquality().equals(other.active, active) &&
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
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(rank));

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {required Uuid uuid,
      required String name,
      required String description,
      required List<String> imageUrls,
      required bool justDropped,
      required bool active,
      required int rank}) = _$_Product;
  const _Product._() : super._();

  @override
  Uuid get uuid;
  @override
  String get name;
  @override
  String get description;
  @override
  List<String> get imageUrls;
  @override
  bool get justDropped;
  @override
  bool get active;
  @override
  int get rank;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
