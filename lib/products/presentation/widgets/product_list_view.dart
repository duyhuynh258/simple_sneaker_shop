import 'package:flutter/material.dart';
import 'package:simple_sneaker_shop/products/domain/product.dart';
import 'package:simple_sneaker_shop/products/presentation/widgets/widgets.dart';

class ProductListView extends StatefulWidget {
  const ProductListView(this._products, {Key? key}) : super(key: key);
  final List<Product> _products;

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
      child: GridView.builder(
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
          // 3
          return ProductPreviewCard(
              uuid: widget._products[index].uuid,
              imageUrls: widget._products[index].imageUrls,
              name: widget._products[index].name,
              description: widget._products[index].description,
              justDropped: widget._products[index].justDropped);
        },
      ),
    );
  }
}
