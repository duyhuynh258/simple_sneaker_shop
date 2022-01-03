import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_sneaker_shop/core/core.dart';
import 'package:simple_sneaker_shop/products/domain/product.dart';
import 'package:simple_sneaker_shop/products/domain/products_failure.dart';

part 'paginated_products_notifier.freezed.dart';

typedef RepositoryGetter
    = Future<Either<ProductsFailure, PaginatedList<Product>>> Function(
        int page);

@freezed
class PaginatedProductsState with _$PaginatedProductsState {
  const PaginatedProductsState._();

  const factory PaginatedProductsState.initial({
    @Default(<Product>[]) List<Product> products,
  }) = _Initial;

  const factory PaginatedProductsState.loadInProgress({
    @Default(<Product>[]) List<Product> products,
    int? itemsPerPage,
  }) = _LoadInProgress;

  const factory PaginatedProductsState.loadSuccess({
    required List<Product> products,
    required int itemsPerPage,
    required bool isNextPageAvailable,
  }) = _LoadSuccess;

  const factory PaginatedProductsState.loadFailure({
    @Default(<Product>[]) List<Product> products,
    required ProductsFailure failure,
    required bool isNextPageAvailable,
  }) = _LoadFailure;
}

class PaginatedProductsNotifier extends StateNotifier<PaginatedProductsState> {
  PaginatedProductsNotifier() : super(const PaginatedProductsState.initial());

  int _page = 0;

  @protected
  void resetState() {
    _page = 0;
    state = const PaginatedProductsState.initial();
  }

  @protected
  Future<void> getNextPage(RepositoryGetter getter) async {
    final bool previousIsNextPageAvailable = state.mapOrNull(
            loadSuccess: (_) => _.isNextPageAvailable,
            loadFailure: (_) => _.isNextPageAvailable) ??
        false;
    state = PaginatedProductsState.loadInProgress(
      products: state.products,
      itemsPerPage: state.mapOrNull(loadSuccess: (_) => _.itemsPerPage),
    );
    final failureOrRepos = await getter(_page);
    state = failureOrRepos.fold(
      (l) {
        //failure
        return PaginatedProductsState.loadFailure(
            products: state.products,
            failure: l,
            isNextPageAvailable: previousIsNextPageAvailable);
      },
      (r) {
        //success
        _page++;
        return PaginatedProductsState.loadSuccess(
          isNextPageAvailable: r.isNextPageAvailable,
          products: [...state.products, ...r.data],
          itemsPerPage: r.pageSize,
        );
      },
    );
  }
}
