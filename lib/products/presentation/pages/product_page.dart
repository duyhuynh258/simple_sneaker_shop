import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_sneaker_shop/core/presentation/widgets/loading_view.dart';
import 'package:simple_sneaker_shop/products/application/paginated_products_notifier.dart';
import 'package:simple_sneaker_shop/products/application/products_notifier.dart';
import 'package:simple_sneaker_shop/products/presentation/widgets/widgets.dart';
import 'package:simple_sneaker_shop/products/shared/providers.dart';

class ProductPage extends ConsumerStatefulWidget {
  const ProductPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ProductPageState();
}

class _ProductPageState extends ConsumerState<ProductPage> {
  @override
  void initState() {
    super.initState();
    final ProductsNotifier notifier =
        ref.read(productsNotifierProvider.notifier);
    Future.microtask(
      notifier.getFirstProductsPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    final PaginatedProductsState productsState =
        ref.watch(productsNotifierProvider);
    return Scaffold(
      body: Builder(
        builder: (BuildContext context) {
          return productsState.map(
              initial: (_) => const SizedBox(),
              loadInProgress: (_) {
                if (_.products.isEmpty) {
                  return const LoadingView();
                }

                return ProductListView(
                  _.products,
                  isNextPageAvailable: false,
                  isLoadingMore: true,
                );
              },
              loadSuccess: (_) {
                if (_.products.isEmpty) {
                  return const ProductEmptyView();
                }
                return ProductListView(
                  _.products,
                  isNextPageAvailable: _.isNextPageAvailable,
                  loadMoreCallback: () => ref
                      .read(productsNotifierProvider.notifier)
                      .getNextStarredReposPage(),
                );
              },
              loadFailure: (_) {
                if (_.products.isEmpty) {
                  return const ProductsLoadFailedView();
                }
                return ProductListView(
                  _.products,
                  isNextPageAvailable: _.isNextPageAvailable,
                  loadMoreCallback: () => ref
                      .read(productsNotifierProvider.notifier)
                      .getNextStarredReposPage(),
                );
              });
        },
      ),
    );
  }
}
