// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paginated_products_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaginatedProductsStateTearOff {
  const _$PaginatedProductsStateTearOff();

  _Initial initial({List<Product> products = const <Product>[]}) {
    return _Initial(
      products: products,
    );
  }

  _LoadInProgress loadInProgress(
      {List<Product> products = const <Product>[], int? itemsPerPage}) {
    return _LoadInProgress(
      products: products,
      itemsPerPage: itemsPerPage,
    );
  }

  _LoadSuccess loadSuccess(
      {required List<Product> products,
      required int itemsPerPage,
      required bool isNextPageAvailable}) {
    return _LoadSuccess(
      products: products,
      itemsPerPage: itemsPerPage,
      isNextPageAvailable: isNextPageAvailable,
    );
  }

  _LoadFailure loadFailure(
      {List<Product> products = const <Product>[],
      required ProductsFailure failure}) {
    return _LoadFailure(
      products: products,
      failure: failure,
    );
  }
}

/// @nodoc
const $PaginatedProductsState = _$PaginatedProductsStateTearOff();

/// @nodoc
mixin _$PaginatedProductsState {
  List<Product> get products => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) initial,
    required TResult Function(List<Product> products, int? itemsPerPage)
        loadInProgress,
    required TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<Product> products, ProductsFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products)? initial,
    TResult Function(List<Product> products, int? itemsPerPage)? loadInProgress,
    TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<Product> products, ProductsFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? initial,
    TResult Function(List<Product> products, int? itemsPerPage)? loadInProgress,
    TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<Product> products, ProductsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedProductsStateCopyWith<PaginatedProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedProductsStateCopyWith<$Res> {
  factory $PaginatedProductsStateCopyWith(PaginatedProductsState value,
          $Res Function(PaginatedProductsState) then) =
      _$PaginatedProductsStateCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$PaginatedProductsStateCopyWithImpl<$Res>
    implements $PaginatedProductsStateCopyWith<$Res> {
  _$PaginatedProductsStateCopyWithImpl(this._value, this._then);

  final PaginatedProductsState _value;
  // ignore: unused_field
  final $Res Function(PaginatedProductsState) _then;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $PaginatedProductsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PaginatedProductsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_Initial(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({this.products = const <Product>[]}) : super._();

  @JsonKey()
  @override
  final List<Product> products;

  @override
  String toString() {
    return 'PaginatedProductsState.initial(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) initial,
    required TResult Function(List<Product> products, int? itemsPerPage)
        loadInProgress,
    required TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<Product> products, ProductsFailure failure)
        loadFailure,
  }) {
    return initial(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products)? initial,
    TResult Function(List<Product> products, int? itemsPerPage)? loadInProgress,
    TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<Product> products, ProductsFailure failure)?
        loadFailure,
  }) {
    return initial?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? initial,
    TResult Function(List<Product> products, int? itemsPerPage)? loadInProgress,
    TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<Product> products, ProductsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends PaginatedProductsState {
  const factory _Initial({List<Product> products}) = _$_Initial;
  const _Initial._() : super._();

  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res>
    implements $PaginatedProductsStateCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products, int? itemsPerPage});
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$PaginatedProductsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;

  @override
  $Res call({
    Object? products = freezed,
    Object? itemsPerPage = freezed,
  }) {
    return _then(_LoadInProgress(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      itemsPerPage: itemsPerPage == freezed
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress(
      {this.products = const <Product>[], this.itemsPerPage})
      : super._();

  @JsonKey()
  @override
  final List<Product> products;
  @override
  final int? itemsPerPage;

  @override
  String toString() {
    return 'PaginatedProductsState.loadInProgress(products: $products, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadInProgress &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality()
                .equals(other.itemsPerPage, itemsPerPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(itemsPerPage));

  @JsonKey(ignore: true)
  @override
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      __$LoadInProgressCopyWithImpl<_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) initial,
    required TResult Function(List<Product> products, int? itemsPerPage)
        loadInProgress,
    required TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<Product> products, ProductsFailure failure)
        loadFailure,
  }) {
    return loadInProgress(products, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products)? initial,
    TResult Function(List<Product> products, int? itemsPerPage)? loadInProgress,
    TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<Product> products, ProductsFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(products, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? initial,
    TResult Function(List<Product> products, int? itemsPerPage)? loadInProgress,
    TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<Product> products, ProductsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(products, itemsPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress extends PaginatedProductsState {
  const factory _LoadInProgress({List<Product> products, int? itemsPerPage}) =
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  List<Product> get products;
  int? get itemsPerPage;
  @override
  @JsonKey(ignore: true)
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res>
    implements $PaginatedProductsStateCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Product> products, int itemsPerPage, bool isNextPageAvailable});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PaginatedProductsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? products = freezed,
    Object? itemsPerPage = freezed,
    Object? isNextPageAvailable = freezed,
  }) {
    return _then(_LoadSuccess(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      itemsPerPage: itemsPerPage == freezed
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      isNextPageAvailable: isNextPageAvailable == freezed
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(
      {required this.products,
      required this.itemsPerPage,
      required this.isNextPageAvailable})
      : super._();

  @override
  final List<Product> products;
  @override
  final int itemsPerPage;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PaginatedProductsState.loadSuccess(products: $products, itemsPerPage: $itemsPerPage, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality()
                .equals(other.itemsPerPage, itemsPerPage) &&
            const DeepCollectionEquality()
                .equals(other.isNextPageAvailable, isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(itemsPerPage),
      const DeepCollectionEquality().hash(isNextPageAvailable));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) initial,
    required TResult Function(List<Product> products, int? itemsPerPage)
        loadInProgress,
    required TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<Product> products, ProductsFailure failure)
        loadFailure,
  }) {
    return loadSuccess(products, itemsPerPage, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products)? initial,
    TResult Function(List<Product> products, int? itemsPerPage)? loadInProgress,
    TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<Product> products, ProductsFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(products, itemsPerPage, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? initial,
    TResult Function(List<Product> products, int? itemsPerPage)? loadInProgress,
    TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<Product> products, ProductsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(products, itemsPerPage, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends PaginatedProductsState {
  const factory _LoadSuccess(
      {required List<Product> products,
      required int itemsPerPage,
      required bool isNextPageAvailable}) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  List<Product> get products;
  int get itemsPerPage;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res>
    implements $PaginatedProductsStateCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products, ProductsFailure failure});

  $ProductsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$PaginatedProductsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? products = freezed,
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ProductsFailure,
    ));
  }

  @override
  $ProductsFailureCopyWith<$Res> get failure {
    return $ProductsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(
      {this.products = const <Product>[], required this.failure})
      : super._();

  @JsonKey()
  @override
  final List<Product> products;
  @override
  final ProductsFailure failure;

  @override
  String toString() {
    return 'PaginatedProductsState.loadFailure(products: $products, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) initial,
    required TResult Function(List<Product> products, int? itemsPerPage)
        loadInProgress,
    required TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<Product> products, ProductsFailure failure)
        loadFailure,
  }) {
    return loadFailure(products, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products)? initial,
    TResult Function(List<Product> products, int? itemsPerPage)? loadInProgress,
    TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<Product> products, ProductsFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(products, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? initial,
    TResult Function(List<Product> products, int? itemsPerPage)? loadInProgress,
    TResult Function(
            List<Product> products, int itemsPerPage, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<Product> products, ProductsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(products, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends PaginatedProductsState {
  const factory _LoadFailure(
      {List<Product> products,
      required ProductsFailure failure}) = _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  List<Product> get products;
  ProductsFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
