import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_sneaker_shop/core/presentation/widgets/loading_view.dart';
import 'package:simple_sneaker_shop/products/application/products_notifier.dart';
import 'package:simple_sneaker_shop/products/presentation/widgets/empty_product_view.dart';
import 'package:simple_sneaker_shop/products/presentation/widgets/product_list_view.dart';
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
      notifier.loadProducts,
    );
  }

  @override
  Widget build(BuildContext context) {
    final productsState = ref.watch(productsNotifierProvider);
    return productsState.map(
        initial: (_) => const SizedBox(),
        loadInProgress: (_) => const LoadingView(),
        loadSuccess: (_) {
          if (_.products.isEmpty) {
            return const EmptyProductView();
          }
          return ProductListView(_.products);
        },
        loadFailure: (_) => ProductListView(_.products));
  }
}
