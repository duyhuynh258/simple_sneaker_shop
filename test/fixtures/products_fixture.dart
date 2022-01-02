import 'package:simple_sneaker_shop/products/domain/product.dart';

class ProductsFixture {
  ProductsFixture._();
  static List<Product> get products => [
        const Product(
          uuid: 'a7efbb80-106c-11ea-892c-33b795b2e87e',
          name: 'Off-White',
          description:
              'Off-White (stylized as OFF-WHITE c/o VIRGIL ABLOH) is a luxury fashion label founded by American creative designer and former Kanye West stylist Virgil Abloh.',
          imageUrls: [],
          justDropped: false,
          active: true,
          rank: 3,
        ),
        const Product(
          uuid: 'aeef1d60-5b45-11ec-adcd-ad5be75d2dc0',
          name: 'Gift Guide For Him',
          description:
              'During this season of giving, check out our gift guide to pick the perfect pair for him!',
          imageUrls: [
            'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/m8VtBRxwWJfpoC7iPwrwun.jpeg'
          ],
          justDropped: false,
          active: true,
          rank: 3,
        )
      ];
}
