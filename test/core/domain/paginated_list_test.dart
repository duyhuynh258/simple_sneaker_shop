import 'package:flutter_test/flutter_test.dart';
import 'package:simple_sneaker_shop/core/core.dart';

import '../../fixtures/products_fixture.dart';

void main() {
  group('test isNextPageAvailable', () {
    test('current page is first page', () {
      final sut = PaginatedList(
          pageSize: 2,
          page: 0,
          totalCount: 4,
          data: ProductsFixture.twoProducts);

      expect(sut.isNextPageAvailable, true);
    });

    test('current page is last page', () {
      final sut = PaginatedList(
          pageSize: 2,
          page: 1,
          totalCount: 4,
          data: ProductsFixture.twoProducts);

      expect(sut.isNextPageAvailable, false);
    });

    test('last page has only one product', () {
      final sut = PaginatedList(
          pageSize: 2,
          page: 1,
          totalCount: 5,
          data: ProductsFixture.twoProducts);

      expect(sut.isNextPageAvailable, true);
    });
  });
}
