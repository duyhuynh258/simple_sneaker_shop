import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_list.freezed.dart';

@freezed
class PaginatedList<T> with _$PaginatedList<T> {
  const PaginatedList._();

  const factory PaginatedList({
    required List<T> data,
    @protected required int page,
    required int pageSize,
    @protected required int totalCount,
  }) = _PaginatedList;

  bool get isNextPageAvailable {
    int itemCountIncludeCurrentPage = 0;
    if (page > 0) {
      final previousPage = page - 1;
      // +1 because page index start from 0.
      final previousPagesCount = previousPage + 1;
      itemCountIncludeCurrentPage = previousPagesCount * pageSize + data.length;
    } else {
      itemCountIncludeCurrentPage = data.length;
    }
    return itemCountIncludeCurrentPage < totalCount;
  }
}
