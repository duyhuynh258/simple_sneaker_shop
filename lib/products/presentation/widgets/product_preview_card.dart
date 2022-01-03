import 'package:flutter/material.dart';
import 'package:simple_sneaker_shop/products/domain/product.dart';
import 'package:simple_sneaker_shop/products/presentation/widgets/product_preview_shimming_card.dart';

class ProductPreviewCard extends StatelessWidget {
  const ProductPreviewCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Push to product detail page
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 3,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    //height: 158,
                    height: ((MediaQuery.of(context).size.width - 28) / 2) + 2,
                    child: ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/product_placeholder.png',
                        image: product.imageUrls.first,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (product.justDropped)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                          ),
                        ),
                        child: const Text(
                          'Just dropped',
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  else
                    const SizedBox(),
                ],
              ),
              SizedBox(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                      child: Text(
                        product.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                            fontSize: 14,
                            height: 1.2,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
