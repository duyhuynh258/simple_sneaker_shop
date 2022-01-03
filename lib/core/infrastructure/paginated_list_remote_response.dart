import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_list_remote_response.freezed.dart';

@freezed
class PaginatedListRemoteResponse<T> with _$PaginatedListRemoteResponse<T> {
  const PaginatedListRemoteResponse._();
  const factory PaginatedListRemoteResponse({
    required List<T> data,
    required int page,
    required int pageSize,
    required int totalCount,
  }) = _PaginatedListRemoteResponse;
}
