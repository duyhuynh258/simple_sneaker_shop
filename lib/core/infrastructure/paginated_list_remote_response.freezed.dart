// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paginated_list_remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaginatedListRemoteResponseTearOff {
  const _$PaginatedListRemoteResponseTearOff();

  _PaginatedListRemoteResponse<T> call<T>(
      {required List<T> data,
      required int page,
      required int pageSize,
      required int totalCount}) {
    return _PaginatedListRemoteResponse<T>(
      data: data,
      page: page,
      pageSize: pageSize,
      totalCount: totalCount,
    );
  }
}

/// @nodoc
const $PaginatedListRemoteResponse = _$PaginatedListRemoteResponseTearOff();

/// @nodoc
mixin _$PaginatedListRemoteResponse<T> {
  List<T> get data => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedListRemoteResponseCopyWith<T, PaginatedListRemoteResponse<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedListRemoteResponseCopyWith<T, $Res> {
  factory $PaginatedListRemoteResponseCopyWith(
          PaginatedListRemoteResponse<T> value,
          $Res Function(PaginatedListRemoteResponse<T>) then) =
      _$PaginatedListRemoteResponseCopyWithImpl<T, $Res>;
  $Res call({List<T> data, int page, int pageSize, int totalCount});
}

/// @nodoc
class _$PaginatedListRemoteResponseCopyWithImpl<T, $Res>
    implements $PaginatedListRemoteResponseCopyWith<T, $Res> {
  _$PaginatedListRemoteResponseCopyWithImpl(this._value, this._then);

  final PaginatedListRemoteResponse<T> _value;
  // ignore: unused_field
  final $Res Function(PaginatedListRemoteResponse<T>) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
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
abstract class _$PaginatedListRemoteResponseCopyWith<T, $Res>
    implements $PaginatedListRemoteResponseCopyWith<T, $Res> {
  factory _$PaginatedListRemoteResponseCopyWith(
          _PaginatedListRemoteResponse<T> value,
          $Res Function(_PaginatedListRemoteResponse<T>) then) =
      __$PaginatedListRemoteResponseCopyWithImpl<T, $Res>;
  @override
  $Res call({List<T> data, int page, int pageSize, int totalCount});
}

/// @nodoc
class __$PaginatedListRemoteResponseCopyWithImpl<T, $Res>
    extends _$PaginatedListRemoteResponseCopyWithImpl<T, $Res>
    implements _$PaginatedListRemoteResponseCopyWith<T, $Res> {
  __$PaginatedListRemoteResponseCopyWithImpl(
      _PaginatedListRemoteResponse<T> _value,
      $Res Function(_PaginatedListRemoteResponse<T>) _then)
      : super(_value, (v) => _then(v as _PaginatedListRemoteResponse<T>));

  @override
  _PaginatedListRemoteResponse<T> get _value =>
      super._value as _PaginatedListRemoteResponse<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_PaginatedListRemoteResponse<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
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

class _$_PaginatedListRemoteResponse<T>
    extends _PaginatedListRemoteResponse<T> {
  const _$_PaginatedListRemoteResponse(
      {required this.data,
      required this.page,
      required this.pageSize,
      required this.totalCount})
      : super._();

  @override
  final List<T> data;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'PaginatedListRemoteResponse<$T>(data: $data, page: $page, pageSize: $pageSize, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginatedListRemoteResponse<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(totalCount));

  @JsonKey(ignore: true)
  @override
  _$PaginatedListRemoteResponseCopyWith<T, _PaginatedListRemoteResponse<T>>
      get copyWith => __$PaginatedListRemoteResponseCopyWithImpl<T,
          _PaginatedListRemoteResponse<T>>(this, _$identity);
}

abstract class _PaginatedListRemoteResponse<T>
    extends PaginatedListRemoteResponse<T> {
  const factory _PaginatedListRemoteResponse(
      {required List<T> data,
      required int page,
      required int pageSize,
      required int totalCount}) = _$_PaginatedListRemoteResponse<T>;
  const _PaginatedListRemoteResponse._() : super._();

  @override
  List<T> get data;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$PaginatedListRemoteResponseCopyWith<T, _PaginatedListRemoteResponse<T>>
      get copyWith => throw _privateConstructorUsedError;
}
