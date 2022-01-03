import 'package:flutter/material.dart';
import 'package:simple_sneaker_shop/core/presentation/widgets/primary_button.dart';
import 'package:simple_sneaker_shop/products/domain/product.dart';
import 'package:simple_sneaker_shop/products/presentation/widgets/widgets.dart';

class ProductListView extends StatefulWidget {
  const ProductListView(this._products,
      {Key? key,
      required this.isNextPageAvailable,
      this.isLoadingMore = false,
      this.loadMoreCallback})
      : super(key: key);
  final List<Product> _products;
  final bool isNextPageAvailable;
  final bool isLoadingMore;
  final VoidCallback? loadMoreCallback;

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  final ScrollController _gridScrollController = ScrollController();
  final ScrollController _listScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _listScrollController,
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GridView.builder(
            itemCount: widget._products.length,
            controller: _gridScrollController,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.618,
            ),
            padding: const EdgeInsets.all(16),
            //physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ProductPreviewCard(product: widget._products[index]);
            },
          ),
          if (widget.isNextPageAvailable)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SizedBox(
                height: 48,
                child: PrimaryButton(
                  onPressed: widget.loadMoreCallback,
                  text: 'Load more',
                ),
              ),
            )
          else if (widget.isLoadingMore)
            const Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
        ],
      ),
    );
  }
}
