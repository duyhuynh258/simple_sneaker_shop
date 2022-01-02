import 'package:flutter/material.dart';

class ProductPreviewCard extends StatelessWidget {
  const ProductPreviewCard(
      {Key? key,
      required this.uuid,
      required this.name,
      required this.description,
      required this.imageUrls,
      required this.justDropped})
      : super(key: key);

  final String uuid;
  final String name;
  final String description;
  final List<String> imageUrls;
  final bool justDropped;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
