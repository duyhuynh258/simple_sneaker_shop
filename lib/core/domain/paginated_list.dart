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
    if (page > 1) {
      itemCountIncludeCurrentPage = (page - 1) * pageSize + data.length;
    } else {
      itemCountIncludeCurrentPage = data.length;
    }
    return itemCountIncludeCurrentPage < totalCount;
  }
}
