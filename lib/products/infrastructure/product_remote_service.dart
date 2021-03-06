import 'package:simple_sneaker_shop/core/core.dart';
import 'package:simple_sneaker_shop/products/infrastructure/dto/dto.dart';

class ProductRemoteService {
  Future<PaginatedListRemoteResponse<ProductDTO>> getProductsPage(
    int page,
  ) async {
    final List<Map<String, Object>>? list =
        _paginatedDumpProducts[page]!['data'] as List<Map<String, Object>>?;
    final Map<String, Object>? pageInfoMap =
        _paginatedDumpProducts[page]!['pagination'] as Map<String, Object>?;

    //Fake loading
    await Future.delayed(const Duration(seconds: 2), () {});
    final List<ProductDTO> productDTOs =
        list?.map(ProductDTO.fromJson).toList() ?? [];
    final pageInfoDTO = ProductPageInfoDTO.fromJson(pageInfoMap!);
    return PaginatedListRemoteResponse(
      data: productDTOs,
      page: pageInfoDTO.page,
      pageSize: pageInfoDTO.pageSize,
      totalCount: pageInfoDTO.totalCount,
    );
  }
}

final Map<int, Map<String, Object>> _paginatedDumpProducts = {
  0: _page0,
  1: _page1,
  2: _page2,
};

// final _dumpProductsData = {
//   'data': [
//     {
//       'uuid': 'a7efbb80-106c-11ea-892c-33b795b2e87e',
//       'name': 'Off-White',
//       'description':
//           'Off-White (stylized as OFF-WHITE c/o VIRGIL ABLOH) is a luxury fashion label founded by American creative designer and former Kanye West stylist Virgil Abloh. Founded in Milan, Italy in 2012, Off-White has grown into an important force bridging streetwear and high-end luxury fashion. Get the latest OFF-WHITE kicks here on Ox Street!<br><br>📸 @mymategym',
//       'rank': 4,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/8mo3NHosD7d5ndbhtM94mH.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'off-white',
//       'createdAt': '2019-11-26T16:49:04.824Z',
//       'updatedAt': '2021-12-12T19:04:29.173Z'
//     },
//     {
//       'uuid': 'aeef1d60-5b45-11ec-adcd-ad5be75d2dc0',
//       'name': 'Gift Guide For Him',
//       'description':
//           'During this season of giving, check out our gift guide to pick the perfect pair for him!',
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/m8VtBRxwWJfpoC7iPwrwun.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'gift-guide-for-him',
//       'createdAt': '2021-12-12T12:18:58.742Z',
//       'updatedAt': '2021-12-12T19:04:29.174Z'
//     },
//     {
//       'uuid': 'feea8e90-2a39-11ec-aac5-4f2ac8bba55a',
//       'name': 'Ox Street Apparel',
//       'description':
//           "Yeap. You read that right. Here's a collection of Ox Street in-house apparel. Cop em' and flex em' now!",
//       'rank': 1001,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/o7FaNeCWgvjSAZZ9vbX3jh.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'ox-street-apparel',
//       'createdAt': '2021-10-11T02:21:51.993Z',
//       'updatedAt': '2021-12-12T19:04:29.174Z'
//     },
//     {
//       'uuid': 'c17d8d60-37b2-11ec-970e-adef7dae0824',
//       'name': 'Halloween Collection',
//       'description':
//           "Trick or Treat! Browse our picks of the best Halloween themed shoes, with the likes of the Dunk Low SB 'Night of Mischief' and the Air Max 97 'Halloween Slime', take your pick and flex hauntingly on the Night of Mischief! ",
//       'rank': 1000,
//       'status': 'inactive',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/77UcHJj2BxLsunvqQGQwh1.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'halloween-collection',
//       'createdAt': '2021-10-28T05:49:03.158Z',
//       'updatedAt': '2021-12-12T19:04:29.174Z'
//     },
//     {
//       'uuid': 'c1cd48d0-5b45-11ec-adcd-ad5be75d2dc0',
//       'name': 'Gift Guide For Her',
//       'description':
//           'During this season of giving, check out our gift guide to pick the perfect pair for her!',
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/oFMzQe55q2d1FTRtcUSktE.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'gift-guide-for-her',
//       'createdAt': '2021-12-12T12:19:30.398Z',
//       'updatedAt': '2021-12-12T19:04:29.175Z'
//     },
//     {
//       'uuid': '1cc00a00-fa4f-11eb-972f-bd9b13237f92',
//       'name': 'Jalur Gemilang Collection',
//       'description':
//           "Inspired by the colors of the Malaysia national flag, or better known as 'Jalur Gemilang' or 'Stripes of Glory' in English, here are some of the best sneakers in Red, White, Blue, and Yellow. With a respective representation of bravery, innocence, unity, and royalty, we chose a mix of some sneakers that have a mixture of all 4 colors of the flag, like the Sacai x LDWaffle 'Varsity Blue' and the Acronym x Air Presto Mid 'Racer Pink', and high-end hype sneaker models like the, Air Jordan 1 x Union ‘Storm Blue’. We also picked some classic colorways that has one color per shoe, like the Air Jordan 1 ‘Pollen’, and the Air Jordan 1 Retro High OG 'University Blue'. Also, not forgetting some signature Malaysian collabs like the HUNDRED% x SneakerLAH x Gel Lyte 3 'Kuala Lumpur Twin Towers' and the SneakerLAH x Gel Kayano 5 OG 'Nasi Lemak'. Take your pick and flex patriotically this Independence Day!<br><br>📸 @shitsmint",
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/sbe658XkAd4HvmPgUQZRU.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'jalur-gemilang-collection',
//       'createdAt': '2021-08-11T02:52:05.664Z',
//       'updatedAt': '2021-12-12T19:04:29.175Z'
//     },
//     {
//       'uuid': 'e3a89810-fa65-11eb-9029-078bfcf55a5d',
//       'name': 'Kaws',
//       'description':
//           'You can now get all the latest Kaws Collab tees on Ox Street. We ship from Singapore, to anywhere in APAC. Press buy to get yours now',
//       'rank': 12,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/i4gKka31yg87rei26BGLLe.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'kaws',
//       'createdAt': '2021-08-11T05:35:08.305Z',
//       'updatedAt': '2021-12-12T19:04:29.176Z'
//     },
//     {
//       'uuid': '2e45bae0-d56f-11eb-96c8-371a940cca6c',
//       'name': 'Crocs',
//       'description':
//           'Crocs is a US-based footwear company in Niwot, Colorado that manufactures and uniquely designs the brand’s foam clogs using the company’s proprietary closed-cell resin, Croslite™, a technology that gives each pair of shoes the soft, comfortable, lightweight, non-marking and odor-resistant qualities. Crocs are ideal for casual wear, as well as for professional use and recreational activities.',
//       'rank': 12,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/tUUZHKVa3NfsUjQW3c7x3y.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'crocs',
//       'createdAt': '2021-06-25T04:38:25.934Z',
//       'updatedAt': '2021-12-12T19:04:29.175Z'
//     },
//     {
//       'uuid': 'a7f2efd0-106c-11ea-aa35-5f95aac46ea2',
//       'name': 'Puma',
//       'description': 'Puma',
//       'rank': 11,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/iiMjzaED2JXgQkytN1Nqg7.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'puma',
//       'createdAt': '2019-11-26T16:49:04.845Z',
//       'updatedAt': '2021-12-12T19:04:29.176Z'
//     },
//     {
//       'uuid': 'a38aa060-071d-11ec-a879-9f2839020c70',
//       'name': "Rhea's favorites",
//       'description':
//           '“It will always just start with a first pair of sneakers, and eventually it will surely grow to a collection”. Rhea Bue, founder of Philippines women’s accessories store Caviar PH, shares her favorite sneaker picks that she guarantees to turn any woman into a bae. Ranging from the latest SB Dunk Low x Parra ‘Abstract Art’ all the way to the older Air Jordan 1 Obsidian release. Check em’ out now! <br><br>📸 @rheabue',
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/wkM6x7MYCib6omakccmC1W.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'rheas-favorites',
//       'createdAt': '2021-08-27T10:00:42.086Z',
//       'updatedAt': '2021-12-12T19:04:29.175Z'
//     },
//     {
//       'uuid': '5364b410-57f7-11ec-be90-dbed2c2bd51b',
//       'name': 'Christmas Collection',
//       'description':
//           "It's that time of the year again! Mariah Carey awakens from her year long slumber, red and green themed clothing, candy canes, eggnogs, and the last holiday for you to flex your kicks this 2021! Checkout out selection of Christmas themes sneakers, ranging from the Air Jordan 1 'Black Toe' all the way to Kobe Bryants 'Grinch' joints. Cop em' on Ox Street now! ",
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/umba88NtqJRZbpo2VgJhRM.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'christmas-collection',
//       'createdAt': '2021-12-08T07:20:30.929Z',
//       'updatedAt': '2021-12-12T19:04:29.176Z'
//     },
//     {
//       'uuid': 'a7ec1200-106c-11ea-b13c-bfeb867c51bf',
//       'name': 'Nike',
//       'description':
//           'The brand with the famous swoosh is home to some of the all time classic silhouettes, like the Air Force 1. Nike has been a mainstay for athletic gear and sneakers worldwide. Founded in 1964 by Phil Knight and Bill Bowerman, Nike has been known for breaking grounds in the sneaker industry. Get your favourite pairs of Nikes at Ox Street!<br><br>📸 @natejrawlings',
//       'rank': 5,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/teymTPbdBnkDxAo3L5ASnv.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'nike',
//       'createdAt': '2019-11-26T16:49:04.800Z',
//       'updatedAt': '2021-12-12T19:04:29.176Z'
//     },
//     {
//       'uuid': 'd4879170-f41f-11eb-b207-0d7b88d1bd4b',
//       'name': "Safirah's favorites",
//       'description':
//           '50% Instagram personality, 50% property consultant, but 100% hypebae. Safirah Elfira, shares her favorite sneaker picks for all the ladies out there. A great sneaker builds greater confidence. Some days you could rock a loud pair like the Air Jordan 1 High Tie Dye, and on some days maybe something a bit subtle like the Air Jordan 3 A Ma Maniere, and perhaps having a daily beater like the Dunk Low Orange Pearl, would defintely unleash your inner hypebae! says Safirah. Check out her favorite picks now!',
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/rTCzzBC46kMLrZxJhSgn7N.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'safirahs-favorites',
//       'createdAt': '2021-08-03T05:58:31.175Z',
//       'updatedAt': '2021-12-12T19:04:29.176Z'
//     },
//     {
//       'uuid': '7157c420-cf2c-11eb-b5d3-77f0e16c95c2',
//       'name': 'Bape',
//       'description':
//           'You can now get all the latest Bape tees on Ox Street. We ship from Singapore, to anywhere in APAC. Press buy to get yours now',
//       'rank': 100,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/omdWDNvNbwckAhbMf1TkWp.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'bape',
//       'createdAt': '2021-06-17T05:25:35.203Z',
//       'updatedAt': '2021-12-12T19:04:29.177Z'
//     },
//     {
//       'uuid': '7e15a6b0-0fb8-11ec-a42d-3120e4a861aa',
//       'name': 'September Best Products',
//       'description':
//           "Here's a collection of the best sneakers sold in September. Think you've missed out on a pair? Cop em' now!",
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/d8pHy1ygYBtEJGinkobR2c.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'september-best-products',
//       'createdAt': '2021-09-07T08:49:20.540Z',
//       'updatedAt': '2021-12-12T19:04:29.176Z'
//     },
//     {
//       'uuid': 'cbc73820-37b2-11ec-92ff-6bdae99adced',
//       'name': 'Halloween Collection',
//       'description':
//           "Trick or Treat! Browse our picks of the best Halloween themed shoes, with the likes of the Dunk Low SB 'Night of Mischief' and the Air Max 97 'Halloween Slime', take your pick and flex hauntingly on the Night of Mischief! ",
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/f6F2SwXozi4a829Wa8M4kp.png'
//       ],
//       'isDeleted': false,
//       'seo': 'halloween-collection',
//       'createdAt': '2021-10-28T05:49:20.419Z',
//       'updatedAt': '2021-12-12T19:04:29.177Z'
//     },
//     {
//       'uuid': 'a7df8ee0-106c-11ea-892c-33b795b2e87e',
//       'name': 'Converse',
//       'description':
//           'What Michael Jordan did with Nike in 1985 with the Air Jordan, Converse did in 1921 with a Basketball player named Chuck Taylor. The OG sneaker, the ultimate beater. No matter what your relationship is to the Chucks, everybody has owned a couple of pairs. Shop Converse now on Ox Street!<br><br>📸 @roflmaojosh',
//       'rank': 9,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/3FnUyL7XPTEEQVD8e2qwLP.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'converse',
//       'createdAt': '2019-11-26T16:49:04.718Z',
//       'updatedAt': '2021-12-12T19:04:29.177Z'
//     },
//     {
//       'uuid': 'b7d74080-0f8f-11ec-8807-65f0d5bf2821',
//       'name': "Jeff's favorites",
//       'description':
//           'Philippine photographer and owner of clothing brand Ofresh, Jeff Ong, shares his favorite sneaker picks that he thinks are the greatest sneakers of all time. Ranging from the latest Air Jordan 1 x Travis Scott x Fragment till the Nike SB Dunk Low Pro x Travis Scott. Check em’ out now! <br><br>📸 @iamjeffong',
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/34W1V819jmt5MUw5VEhdi3.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'jeffs-favorites',
//       'createdAt': '2021-09-07T03:57:28.072Z',
//       'updatedAt': '2021-12-12T19:04:29.177Z'
//     },
//     {
//       'uuid': 'a7ca0b10-106c-11ea-b13c-bfeb867c51bf',
//       'name': 'Balenciaga',
//       'description':
//           'Now part of Gucci mother company Kering Group, Balenciaga was founded by a Spanish designer in 1917. One of the most innovative and avant-garde streetwear brands out there, Balenciaga always surprises with interesting silhouettes. Get your Balenciaga fix now on Ox Street!<br><br>📸 @lucasbld17',
//       'rank': 13,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/owjCJzMvkNJ1NNVvfthVJY.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'balenciaga',
//       'createdAt': '2019-11-26T16:49:04.578Z',
//       'updatedAt': '2021-12-12T19:04:29.177Z'
//     },
//     {
//       'uuid': 'f070df00-8b8d-11ea-9a82-955443f87415',
//       'name': 'Fear of God',
//       'description':
//           'When Jerry Lorenzo founded Fear of God in 2012 he was unknown in the streetwear world and had no training, nor experience as a fashion designer. His brand hit the scene like a bomb. Known for innovative and high-end takes on American classic silhouettes, Kanye West and Kendall Jenner are among the vocal fans of the brand. FOG has been on a roll lately, and you can pick up those drops you missed-out on here on Ox Street!<br><br>📸 @vnsnk',
//       'rank': 14,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/tKHM1HUxqGEbZETPEcYJQQ.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'fear-of-god',
//       'createdAt': '2020-05-01T09:27:12.881Z',
//       'updatedAt': '2021-12-12T19:04:29.177Z'
//     },
//     {
//       'uuid': '106b6a70-d3f7-11eb-8907-0b6298aa73e9',
//       'name': 'KIREI TH',
//       'description':
//           'ครั้งแรกกับความร่วมมือระหว่าง KIREI TH x Ox Street สำหรับประเทศไทย มีให้เลือกช็อปแล้วบน Ox Street คอลเลกชันลิมิเต็ดอิดิชั่นนี้ประกอบด้วย เสื้อยืดโอเวอร์ไซส์สีเทาฟอกจาง แมสก์ปิดปาก 2 แบบและรองเท้าสนีกเกอร์ 16 แบบที่คัดมาอย่างพิเศษโดย @be4vty ผู้ก่อตั้ง KIREI TH รีบมาช็อปเลยก่อนที่สินค้าจะขายหมด! The first KIREI TH x Ox Street merchandise collaboration for Thailand is available exclusively on Ox Street. This limited edition collection includes a washed grey oversized T-Shirt, 2 versions of face masks, and 16 sneakers specially selected by KIREI TH’s founder, @be4vty. Hurry, cop them now before they’re sold out!',
//       'rank': 9,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/i6MrgU1erweYGY3ETvz6Le.png'
//       ],
//       'isDeleted': false,
//       'seo': 'kirei-th',
//       'createdAt': '2021-06-23T07:46:05.079Z',
//       'updatedAt': '2021-12-12T19:04:29.177Z'
//     },
//     {
//       'uuid': 'a7f6c060-106c-11ea-aa35-5f95aac46ea2',
//       'name': 'Reebok',
//       'description':
//           'Founded in England, Reebok is a sporting goods company renowned for their workout shoes and their retro silhouettes. Under the reign of current Yeezy Creative Director Steven Smith, Reebok also has released such legendary silhouettes as the InstaPump. Get your Reebok favourites at Ox Street! <br><br>📸 @lucasblackman',
//       'rank': 8,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/fUNdDTjKfydkwVtP6WYTx.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'reebok',
//       'createdAt': '2019-11-26T16:49:04.870Z',
//       'updatedAt': '2021-12-12T19:04:29.177Z'
//     },
//     {
//       'uuid': 'dc0607e0-b22c-11eb-8a84-5b11841d413f',
//       'name': 'Travis Scott',
//       'description':
//           'Travis Scott’s imaginative output has moved music and streetwear culture forwards with innovation and passion, stemming from his own sense of creative expression from his signature Cactus Jack branding to partnerships with Nike, McDonald’s and Fortnite. Get your Travis Scott collabs on Ox Street!',
//       'rank': 15,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/5KiXsmhsVrRfw7YW8vfUtZ.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'travis-scott',
//       'createdAt': '2021-05-11T07:45:30.462Z',
//       'updatedAt': '2021-12-12T19:04:29.178Z'
//     },
//     {
//       'uuid': 'a782eff0-106c-11ea-892c-33b795b2e87e',
//       'name': 'adidas',
//       'description':
//           'Founded by Adolf (Adi) Dassler in Germany in 1949, adidas has a long heritage with many classic silhouettes like the Superstars. Yet at the same time constantly innovating. Propelled into the mainstay of modern street culture through early NYC rappers like Run DMC, adidas stays relevant through smart collaborations. Catch your 3 stripe favourites at Ox Street!<br><br>📸 @jemuelwong',
//       'rank': 6,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/uUzTYKFLrWUvxC4KWuqwev.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'adidas',
//       'createdAt': '2019-11-26T16:49:04.113Z',
//       'updatedAt': '2021-12-12T19:04:29.178Z'
//     },
//     {
//       'uuid': '59ff5f30-1d20-11ec-9161-357320fd8683',
//       'name': "Allen's favorites",
//       'description':
//           'Fashion Consultant and Blogger, Allen Claudius from India shares his favorite picks ranging from the Air Jordan 3 A Ma Maniere right till the Yeezy Foam Runners. Check it out now! <br><br>📸 @bowtiesandbonesblog',
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/7NpzBRqkQSUWFdegtpKNoW.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'allens-favorites',
//       'createdAt': '2021-09-24T10:15:32.771Z',
//       'updatedAt': '2021-12-12T19:04:29.178Z'
//     },
//     {
//       'uuid': 'a7ab8690-106c-11ea-aa35-5f95aac46ea2',
//       'name': 'Asics',
//       'description': 'Asics',
//       'rank': 10,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/3RNKyhd5eLaJMZzLwHXmX5.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'asics',
//       'createdAt': '2019-11-26T16:49:04.379Z',
//       'updatedAt': '2021-12-12T19:04:29.178Z'
//     },
//     {
//       'uuid': 'ffad1bd0-8b9e-11ea-9a82-955443f87415',
//       'name': 'Sacai Duplicate',
//       'description': 'sacai',
//       'rank': 1000,
//       'status': 'inactive',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/ieCaSGsdrgktjwnYMreWUf.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'sacai-duplicate',
//       'createdAt': '2020-05-01T11:29:19.886Z',
//       'updatedAt': '2021-12-12T19:04:29.178Z'
//     },
//     {
//       'uuid': 'a7fa42d0-106c-11ea-b13c-bfeb867c51bf',
//       'name': 'Vans',
//       'description':
//           "Started as \"Van Doren Rubber Company\", Paul Van Doren's Vans was just a normal shoe company at first. But through the early 80s, Vans high popularity in California earned it the reputation as THE shoe for skaters and surfers. Today, the Vans ‘Old Skool’ is a staple shoe for just about everyone. Get your Vans favourites at Ox Street now! <br><br>📸 @sneakophilo",
//       'rank': 7,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/2EWYigBBdgj295FqumjZjA.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'vans',
//       'createdAt': '2019-11-26T16:49:04.894Z',
//       'updatedAt': '2021-12-12T19:04:29.178Z'
//     },
//     {
//       'uuid': '8b0486e0-ea13-11eb-be71-730be382bf9c',
//       'name': 'Hidden gems',
//       'description':
//           "From Air Jordan 1 Lows to Nike Dunk Highs, here are some hidden gems that you may have missed while browsing for new kicks on Ox Street. These are our best picks for affordable hype sneakers. From under retail pickups to criminally underrated pairs that everyone is sleeping on. Check out our selection and don't sleep on these pairs!",
//       'rank': 1000,
//       'status': 'inactive',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/jHnAiHWKM6N1mKUhvurZf9.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'hidden-gems',
//       'createdAt': '2021-07-21T11:05:22.255Z',
//       'updatedAt': '2021-12-12T19:04:29.178Z'
//     },
//     {
//       'uuid': 'fb8738a0-f0fc-11eb-a2a9-41efe03a7725',
//       'name': 'Camo Craze',
//       'description':
//           'Ten-Hut soldier! Browse to our selection of camouflage themed sneakers, from all the best brands like Nike, Adidas, Air Jordan, Yeezy, and many more. Some of these you may never even have known existed! As always, all of these specially selected camo sneakers are guaranteed authentic by Ox Street. Browse and buy now or make an offer!',
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/ny7aJydnx9dzAL9cedWLwa.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'camo-craze',
//       'createdAt': '2021-07-30T06:11:30.731Z',
//       'updatedAt': '2021-12-12T19:04:29.179Z'
//     },
//     {
//       'uuid': 'f19526e0-1b45-11ec-b349-0367c005ee88',
//       'name': 'Dunk Mania',
//       'description':
//           'Dunk Mania Oxffer! From 10am on 24 Sep till 11:59pm on 26 Sep, stand a chance to cop these Dunks at retail price by making your offers. To start, sign up for an Ox Street account or sign in, and make an offer for your selected Dunks and sizes. Your card will only be charged if you’re selected as one of our Oxffer winners, which will be announced on 27 Sep 2021. Bonus: 0% seller fees when you list and sell your Dunks on Ox Street.',
//       'rank': 10,
//       'status': 'inactive',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/cG6NURCkYw8jtvbN6j4qr3.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'dunk-mania',
//       'createdAt': '2021-09-22T01:39:36.143Z',
//       'updatedAt': '2021-12-12T19:04:29.179Z'
//     },
//     {
//       'uuid': 'a12035e0-f59f-11eb-9bd6-1b94fab3af09',
//       'name': 'Top 10 Sneakers in July',
//       'description':
//           "From the wonderful colors of the Dunk Low Free 99, the military themed Undefeated Air Force 1, right up till the iconic Fragment Dunk High 'Beijing' here's our list of the top 10 products of July!",
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/bPCcy711RRti7F6EHtFrh.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'top-10-sneakers-in-july',
//       'createdAt': '2021-08-05T03:45:51.678Z',
//       'updatedAt': '2021-12-12T19:04:29.179Z'
//     },
//     {
//       'uuid': 'e8e49ff0-e461-11eb-93a0-351884823972',
//       'name': '11.11 Best Picks',
//       'description':
//           'Ranging from the timeless Air Jordan 1 til the recent Nike SB Dunk uprising, these are some of the best picks for 11.11. Enjoy Free Shipping* to Singapore, Malaysia, Hong Kong, Taiwan, and the Philippines from 11-17 November. Cop your kicks now! <br.<br> *limited redemptions',
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/eEPyRg8uMh5CitWDhSLRvv.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': '1111-best-picks',
//       'createdAt': '2021-07-14T05:11:13.519Z',
//       'updatedAt': '2021-12-12T19:04:29.179Z'
//     },
//     {
//       'uuid': 'a7e84170-106c-11ea-aa35-5f95aac46ea2',
//       'name': 'New Balance',
//       'description':
//           'New Balance was founded as New Balance Arch Support Company in 1906 in Boston, Massachusetts. By 1960, New Balance arch supports had become very popular among budding athletes, some of whom even approached the brand asking for tailored sneakers. Over the years New Balance has stayed relevant by producing consistently high quality shoes and occasionally dipping into legendary territory. Get your New Balance here at Ox Street!<br><br>📸 @sim0nsteenberg',
//       'rank': 8,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/d7RPoe9Ezz4eVGpiPmiZCe.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'new-balance',
//       'createdAt': '2019-11-26T16:49:04.775Z',
//       'updatedAt': '2021-12-12T19:04:29.179Z'
//     },
//     {
//       'uuid': 'c6354c70-acb2-11eb-9327-71c6e1b64f1a',
//       'name': 'Hari Raya Oxffers',
//       'description':
//           "This Hari Raya we are dropping 4 awesome pairs of sneakers at retail price. Entering is simple. Just tap the product you want, press 'Make Offer', and follow the steps through checkout. You will need a credit or debit card to enter, but don't worry. You will not be charged unless you are the winner! ",
//       'rank': 1000,
//       'status': 'inactive',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/9ng9VN92VVtqdMHE1435wu.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'hari-raya-oxffers',
//       'createdAt': '2021-05-04T08:28:59.447Z',
//       'updatedAt': '2021-12-12T19:04:29.179Z'
//     },
//     {
//       'uuid': 'a7e3fbb0-106c-11ea-b13c-bfeb867c51bf',
//       'name': 'Fila',
//       'description': 'Fila',
//       'rank': 12,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/jt4fTGPUYBaQ2w4yy3SdSC.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'fila',
//       'createdAt': '2019-11-26T16:49:04.748Z',
//       'updatedAt': '2021-12-12T19:04:29.180Z'
//     },
//     {
//       'uuid': '7e2cdd00-6205-11eb-afa9-bde8d8092974',
//       'name': 'Last Minute CNY',
//       'description':
//           'Get your last minute fix of new kicks for the Year of the Ox! We guarantee shipping the same working day if orders are made before 1pm, or shipped the next working day if after 1pm or on the weekend.',
//       'rank': 1,
//       'status': 'inactive',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/a3tci6XxuZd1voxBmTYUBF.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'last-minute-cny',
//       'createdAt': '2021-01-29T07:42:09.617Z',
//       'updatedAt': '2021-12-12T19:04:29.180Z'
//     },
//     {
//       'uuid': 'a7fe1360-106c-11ea-892c-33b795b2e87e',
//       'name': 'Yeezy',
//       'description':
//           'The Yeezy line by Kanye West has hit the scene hard since Yeezy’s move from Nike to Adidas in 2015. Designed by Ye himself, all designs are unique and not based on any existing adidas model. Kanye on his own is already a superstar, so it’s not surprising that most Yeezy drops sell out quickly. Get your Yeezy needs at Ox Street!<br><br>📸 @hypetobs',
//       'rank': 2,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/nLqvGy2jubWfEVLidTUcvt.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'yeezy',
//       'createdAt': '2019-11-26T16:49:04.918Z',
//       'updatedAt': '2021-12-12T19:04:29.180Z'
//     },
//     {
//       'uuid': 'b290d940-cf2c-11eb-ad33-05db743c9cb6',
//       'name': 'ADLV',
//       'description':
//           'You can now get all the latest Anti Social Social Club tees on Ox Street. We ship from Singapore, to anywhere in APAC. Press buy to get yours now',
//       'rank': 100,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/5tVtKAftAt9nBJmk2NJxKP.png'
//       ],
//       'isDeleted': false,
//       'seo': 'adlv',
//       'createdAt': '2021-06-17T05:27:24.628Z',
//       'updatedAt': '2021-12-12T19:04:29.180Z'
//     },
//     {
//       'uuid': 'bc8fe0b0-c4b2-11ea-aa58-67174f197bea',
//       'name': 'On',
//       'description':
//           'On was born in the Swiss alps with one goal: to revolutionize the sensation of running. It’s all based on one radical idea. Soft landings followed by explosive take-offs.',
//       'rank': 18,
//       'status': 'inactive',
//       'justDropped': true,
//       'imageUrls': [''],
//       'isDeleted': false,
//       'seo': 'on',
//       'createdAt': '2020-07-13T02:44:13.499Z',
//       'updatedAt': '2021-12-12T19:04:29.180Z'
//     },
//     {
//       'uuid': 'a13108d0-92c5-11eb-bd51-95294f93a317',
//       'name': 'Comme des Garcons',
//       'description':
//           'Comme des Garçons (also known as CDG) is a Japanese fashion label founded and headed by Rei Kawakubo in Paris. The label began in 1969 and the company was founded in 1973. Its French flagship store is in Paris. It also establishes country-wide and world-wide store chain for various lines of products, including Dover Street Market, in major cities such as London, Melbourne, Hong Kong, and New York City.',
//       'rank': 3,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/kVXiThRUb1yqWJi9YGNVbr.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'comme-des-garcons',
//       'createdAt': '2021-04-01T08:38:27.550Z',
//       'updatedAt': '2021-12-12T19:04:29.180Z'
//     },
//     {
//       'uuid': '2cfcb1b0-ea0b-11eb-85e5-3334541656ac',
//       'name': "Aiman's favorites",
//       'description':
//           'Malaysian Content Creator and Ampang homeboy, Aiman Danial, grew up loving basketball and skateboarding which influenced him to start collecting sneakers. Check out his personal favorite picks that you can also rock anytime, anywhere.<br><br>📸 @aimandvnial',
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/7baQTYFoM9SxQ4qHdbMBP9.png'
//       ],
//       'isDeleted': false,
//       'seo': 'aimans-favorites',
//       'createdAt': '2021-07-21T10:05:28.524Z',
//       'updatedAt': '2021-12-12T19:04:29.180Z'
//     },
//     {
//       'uuid': '35f729e0-8141-11eb-b886-3d38e2a148e0',
//       'name': 'Supreme',
//       'description':
//           "Supreme is an American skateboarding lifestyle brand established in New York City in April 1994. The brand is targeted at the skateboarding and hip hop cultures, and youth culture in general. The brand produces clothes and accessories and also manufactures skateboards.  The red box logo with \"Supreme\" in white Futura Heavy Oblique is debated to be largely based on Barbara Kruger's propaganda art.",
//       'rank': 9,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/kHHmvZZNM98QAxoAXgFBof.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'supreme',
//       'createdAt': '2021-03-10T01:37:44.318Z',
//       'updatedAt': '2021-12-12T19:04:29.180Z'
//     },
//     {
//       'uuid': 'd16c0b70-8b8d-11ea-9a82-955443f87415',
//       'name': 'sacai',
//       'description':
//           'Founded in 1999 by Chitose Abe, Sacai has established themselves as a powerful force in both fashion and sneaker game. Did you know she was a pattern maker at Comme des Garçons before joining Junya Watanabe. With help and guidance from Rei Kuwakubo, Sacai has flourished since their runway show in 2011 and now retails at over 175 international locations.<br><br>📸 @brandon_louie',
//       'rank': 12,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/sazWLJ4sD2sexz3CRuGWsP.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'sacai',
//       'createdAt': '2020-05-01T09:26:20.840Z',
//       'updatedAt': '2021-12-12T19:04:29.180Z'
//     },
//     {
//       'uuid': '195d8da0-f2c6-11eb-a7fe-67c17d3240ae',
//       'name': "Amin's favorites",
//       'description':
//           "Malaysian Videographer and Sneaker Collector Amin shares his personal picks of sneakers that he thinks is great to wear indoors and outdoors, while running a shoot. Amin's favorites varies from Nike SB Dunk Lows to Air Jordans and Yeezy's. Check em' out now!<br><br>📸 @aminkamid",
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/cM8rmPjoRW2wd7P7C5mZmH.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'amins-favorites',
//       'createdAt': '2021-08-01T12:43:40.794Z',
//       'updatedAt': '2021-12-12T19:04:29.181Z'
//     },
//     {
//       'uuid': 'c57a32d0-cf2d-11eb-ad33-05db743c9cb6',
//       'name': 'Anti Social Social Club',
//       'description':
//           'You can now get all the latest ADLV tees on Ox Street. We ship from Singapore, to anywhere in APAC. Press buy to get yours now',
//       'rank': 100,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/64x2B6kve6ZQcpbNBPkaph.png'
//       ],
//       'isDeleted': false,
//       'seo': 'anti-social-social-club',
//       'createdAt': '2021-06-17T05:35:05.853Z',
//       'updatedAt': '2021-12-12T19:04:29.181Z'
//     },
//     {
//       'uuid': 'a79b0bd0-106c-11ea-892c-33b795b2e87e',
//       'name': 'Air Jordan',
//       'description':
//           'Jordan brand by Nike is fueled by the one and only, Michael Jordan. Predominantly focused on Basketball gear, the classics that are now more suited for lifestyle wear are what makes the Jordan brand iconic. Jordan brand is also the first player signature line to be a dedicated brand. Get your Jumpman favourites at Ox Street!<br><br>📸 @natejrawlings',
//       'rank': 2,
//       'status': 'active',
//       'justDropped': false,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/p6MVv5SVDGsrNyUfzQHzNF.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'air-jordan',
//       'createdAt': '2019-11-26T16:49:04.270Z',
//       'updatedAt': '2021-12-12T19:04:29.181Z'
//     },
//     {
//       'uuid': '36f07c40-f106-11eb-8cf5-1f070fddcf3b',
//       'name': 'Singapore Turns 56',
//       'description':
//           "Inspired by the colors of the Singapore National flag, here are some of the best sneakers in Red and White. A timeless color combination in any country, we choose a mix of legendary models like the Air Jordan 4 'Fire Red' and many different variations on the iconic 'Chicago' colorway. But we also have good choices  at a smaller pricepoint with the Air Max 90 'Infrared' or Air Jordan 1 Lows. Take your pick and make sure to nail that patriotic flex this National Day!",
//       'rank': 1000,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/qE21wAUzCW4FPJcCEexqtc.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'singapore-turns-56',
//       'createdAt': '2021-07-30T07:17:35.876Z',
//       'updatedAt': '2021-12-12T19:04:29.181Z'
//     },
//     {
//       'uuid': 'fb297c10-cf2d-11eb-ad33-05db743c9cb6',
//       'name': 'Supreme',
//       'description':
//           'You can now get all the latest Supreme tees on Ox Street. We ship from Singapore, to anywhere in APAC. Press buy to get yours now',
//       'rank': 100,
//       'status': 'inactive',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/wedRasyVCgj6Q6HQjPg5Jf.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'supreme',
//       'createdAt': '2021-06-17T05:36:35.921Z',
//       'updatedAt': '2021-12-12T19:04:29.181Z'
//     },
//     {
//       'uuid': 'ca4919a0-ccb4-11eb-b8fe-153febab75df',
//       'name': "Father's Day Oxffer",
//       'description':
//           'Father’s Day Exclusive Oxffer featuring the New Balance 992 ‘Grey’! From 15 June, 10am to 17 June, 10am, stand a chance to cop the ultimate sneakers for your dad for only SGD 20! Here are the steps to take: Step 1: Sign up / log in to your Ox Street account via our mobile app or desktop Step 2: Make your SGD20 offer ONLY on this Father’s Day Oxffer page Make your SGD20 offer on your selected sneaker size Your payment card will not be charged when you make the offer, a charge of SGD20 and the relevant shipping costs will only take place once a lucky winner is randomly selected when the event ends on 17 June 2021 You will receive a confirmation email once your offer has been made successfully Step 3: Post on Instagram using #oxstreetfathersday for additional chances to win Once your offer has been made, head over to your Instagram to share a post of your dad and state why he should win the New Balance 992 ‘Grey’ sneakers for Father’s Day. We’re looking for interesting stories and creative posts, so feel free to go all out! You may start your post caption with: #oxstreetfathersday This Father’s Day, I would like to win a pair of New Balance 992 ‘Grey’ sneakers for my dad because... Remember to use the hashtag #oxstreetfathersday and make sure your account is set to public for us to view your post Step 4: Wait till 17 June 2021 for the results One lucky winner will automatically purchase a pair of New Balance 992 ‘Grey’ sneakers for only SGD20 (additional shipping costs apply) and will receive an email confirmation of the order. We will also announce the winner via our Instagram Stories, so stay tuned The sneakers will be shipped out to the winner on 17 June 2021',
//       'rank': 1,
//       'status': 'inactive',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/rpoPggBPEtXx38Km1FwLeU.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'fathers-day-oxffer',
//       'createdAt': '2021-06-14T02:04:02.491Z',
//       'updatedAt': '2021-12-12T19:04:29.181Z'
//     },
//     {
//       'uuid': '0b8536c0-d26d-11eb-9d42-c1028d047c89',
//       'name': 'Essentials',
//       'description':
//           'You can now get all the latest Essentials tees on Ox Street. We ship from Singapore, to anywhere in APAC. Press buy to get yours now',
//       'rank': 100,
//       'status': 'active',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/vottHR2kwkAhcMrpXfxq8e.png'
//       ],
//       'isDeleted': false,
//       'seo': 'essentials',
//       'createdAt': '2021-06-21T08:45:35.149Z',
//       'updatedAt': '2021-12-12T19:04:29.181Z'
//     },
//     {
//       'uuid': '07774020-2bdb-11eb-9bc2-27f16679a524',
//       'name': 'Black Friday',
//       'description':
//           'Between 23 November and 27 November we are dropping 8 sneakers for retail or lower. Sign up on Ox Street and make your offers below. One winner per product will buy automatically the day after the deadline. ',
//       'rank': 1,
//       'status': 'inactive',
//       'justDropped': true,
//       'imageUrls': [
//         'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/pLkTJDE1Z8cCodP2jC6qy1.jpeg'
//       ],
//       'isDeleted': false,
//       'seo': 'black-friday',
//       'createdAt': '2020-11-21T09:22:08.802Z',
//       'updatedAt': '2021-12-12T19:04:29.181Z'
//     }
//   ],
//   'pagination': {'page': 0, 'pageSize': 100, 'totalCount': 52}
// };

final _page0 = {
  'data': [
    {
      'uuid': 'a7efbb80-106c-11ea-892c-33b795b2e87e',
      'name': 'Off-White',
      'description':
          'Off-White (stylized as OFF-WHITE c/o VIRGIL ABLOH) is a luxury fashion label founded by American creative designer and former Kanye West stylist Virgil Abloh. Founded in Milan, Italy in 2012, Off-White has grown into an important force bridging streetwear and high-end luxury fashion. Get the latest OFF-WHITE kicks here on Ox Street!<br><br>📸 @mymategym',
      'rank': 4,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/8mo3NHosD7d5ndbhtM94mH.jpeg'
      ],
      'isDeleted': false,
      'seo': 'off-white',
      'createdAt': '2019-11-26T16:49:04.824Z',
      'updatedAt': '2021-12-12T19:04:29.173Z'
    },
    {
      'uuid': 'aeef1d60-5b45-11ec-adcd-ad5be75d2dc0',
      'name': 'Gift Guide For Him',
      'description':
          'During this season of giving, check out our gift guide to pick the perfect pair for him!',
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/m8VtBRxwWJfpoC7iPwrwun.jpeg'
      ],
      'isDeleted': false,
      'seo': 'gift-guide-for-him',
      'createdAt': '2021-12-12T12:18:58.742Z',
      'updatedAt': '2021-12-12T19:04:29.174Z'
    },
    {
      'uuid': 'feea8e90-2a39-11ec-aac5-4f2ac8bba55a',
      'name': 'Ox Street Apparel',
      'description':
          "Yeap. You read that right. Here's a collection of Ox Street in-house apparel. Cop em' and flex em' now!",
      'rank': 1001,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/o7FaNeCWgvjSAZZ9vbX3jh.jpeg'
      ],
      'isDeleted': false,
      'seo': 'ox-street-apparel',
      'createdAt': '2021-10-11T02:21:51.993Z',
      'updatedAt': '2021-12-12T19:04:29.174Z'
    },
    {
      'uuid': 'c17d8d60-37b2-11ec-970e-adef7dae0824',
      'name': 'Halloween Collection',
      'description':
          "Trick or Treat! Browse our picks of the best Halloween themed shoes, with the likes of the Dunk Low SB 'Night of Mischief' and the Air Max 97 'Halloween Slime', take your pick and flex hauntingly on the Night of Mischief! ",
      'rank': 1000,
      'status': 'inactive',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/77UcHJj2BxLsunvqQGQwh1.jpeg'
      ],
      'isDeleted': false,
      'seo': 'halloween-collection',
      'createdAt': '2021-10-28T05:49:03.158Z',
      'updatedAt': '2021-12-12T19:04:29.174Z'
    },
    {
      'uuid': 'c1cd48d0-5b45-11ec-adcd-ad5be75d2dc0',
      'name': 'Gift Guide For Her',
      'description':
          'During this season of giving, check out our gift guide to pick the perfect pair for her!',
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/oFMzQe55q2d1FTRtcUSktE.jpeg'
      ],
      'isDeleted': false,
      'seo': 'gift-guide-for-her',
      'createdAt': '2021-12-12T12:19:30.398Z',
      'updatedAt': '2021-12-12T19:04:29.175Z'
    },
    {
      'uuid': '1cc00a00-fa4f-11eb-972f-bd9b13237f92',
      'name': 'Jalur Gemilang Collection',
      'description':
          "Inspired by the colors of the Malaysia national flag, or better known as 'Jalur Gemilang' or 'Stripes of Glory' in English, here are some of the best sneakers in Red, White, Blue, and Yellow. With a respective representation of bravery, innocence, unity, and royalty, we chose a mix of some sneakers that have a mixture of all 4 colors of the flag, like the Sacai x LDWaffle 'Varsity Blue' and the Acronym x Air Presto Mid 'Racer Pink', and high-end hype sneaker models like the, Air Jordan 1 x Union ‘Storm Blue’. We also picked some classic colorways that has one color per shoe, like the Air Jordan 1 ‘Pollen’, and the Air Jordan 1 Retro High OG 'University Blue'. Also, not forgetting some signature Malaysian collabs like the HUNDRED% x SneakerLAH x Gel Lyte 3 'Kuala Lumpur Twin Towers' and the SneakerLAH x Gel Kayano 5 OG 'Nasi Lemak'. Take your pick and flex patriotically this Independence Day!<br><br>📸 @shitsmint",
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/sbe658XkAd4HvmPgUQZRU.jpeg'
      ],
      'isDeleted': false,
      'seo': 'jalur-gemilang-collection',
      'createdAt': '2021-08-11T02:52:05.664Z',
      'updatedAt': '2021-12-12T19:04:29.175Z'
    },
    {
      'uuid': 'e3a89810-fa65-11eb-9029-078bfcf55a5d',
      'name': 'Kaws',
      'description':
          'You can now get all the latest Kaws Collab tees on Ox Street. We ship from Singapore, to anywhere in APAC. Press buy to get yours now',
      'rank': 12,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/i4gKka31yg87rei26BGLLe.jpeg'
      ],
      'isDeleted': false,
      'seo': 'kaws',
      'createdAt': '2021-08-11T05:35:08.305Z',
      'updatedAt': '2021-12-12T19:04:29.176Z'
    },
    {
      'uuid': '2e45bae0-d56f-11eb-96c8-371a940cca6c',
      'name': 'Crocs',
      'description':
          'Crocs is a US-based footwear company in Niwot, Colorado that manufactures and uniquely designs the brand’s foam clogs using the company’s proprietary closed-cell resin, Croslite™, a technology that gives each pair of shoes the soft, comfortable, lightweight, non-marking and odor-resistant qualities. Crocs are ideal for casual wear, as well as for professional use and recreational activities.',
      'rank': 12,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/tUUZHKVa3NfsUjQW3c7x3y.jpeg'
      ],
      'isDeleted': false,
      'seo': 'crocs',
      'createdAt': '2021-06-25T04:38:25.934Z',
      'updatedAt': '2021-12-12T19:04:29.175Z'
    },
    {
      'uuid': 'a7f2efd0-106c-11ea-aa35-5f95aac46ea2',
      'name': 'Puma',
      'description': 'Puma',
      'rank': 11,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/iiMjzaED2JXgQkytN1Nqg7.jpeg'
      ],
      'isDeleted': false,
      'seo': 'puma',
      'createdAt': '2019-11-26T16:49:04.845Z',
      'updatedAt': '2021-12-12T19:04:29.176Z'
    },
    {
      'uuid': 'a38aa060-071d-11ec-a879-9f2839020c70',
      'name': "Rhea's favorites",
      'description':
          '“It will always just start with a first pair of sneakers, and eventually it will surely grow to a collection”. Rhea Bue, founder of Philippines women’s accessories store Caviar PH, shares her favorite sneaker picks that she guarantees to turn any woman into a bae. Ranging from the latest SB Dunk Low x Parra ‘Abstract Art’ all the way to the older Air Jordan 1 Obsidian release. Check em’ out now! <br><br>📸 @rheabue',
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/wkM6x7MYCib6omakccmC1W.jpeg'
      ],
      'isDeleted': false,
      'seo': 'rheas-favorites',
      'createdAt': '2021-08-27T10:00:42.086Z',
      'updatedAt': '2021-12-12T19:04:29.175Z'
    },
    {
      'uuid': '5364b410-57f7-11ec-be90-dbed2c2bd51b',
      'name': 'Christmas Collection',
      'description':
          "It's that time of the year again! Mariah Carey awakens from her year long slumber, red and green themed clothing, candy canes, eggnogs, and the last holiday for you to flex your kicks this 2021! Checkout out selection of Christmas themes sneakers, ranging from the Air Jordan 1 'Black Toe' all the way to Kobe Bryants 'Grinch' joints. Cop em' on Ox Street now! ",
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/umba88NtqJRZbpo2VgJhRM.jpeg'
      ],
      'isDeleted': false,
      'seo': 'christmas-collection',
      'createdAt': '2021-12-08T07:20:30.929Z',
      'updatedAt': '2021-12-12T19:04:29.176Z'
    },
    {
      'uuid': 'a7ec1200-106c-11ea-b13c-bfeb867c51bf',
      'name': 'Nike',
      'description':
          'The brand with the famous swoosh is home to some of the all time classic silhouettes, like the Air Force 1. Nike has been a mainstay for athletic gear and sneakers worldwide. Founded in 1964 by Phil Knight and Bill Bowerman, Nike has been known for breaking grounds in the sneaker industry. Get your favourite pairs of Nikes at Ox Street!<br><br>📸 @natejrawlings',
      'rank': 5,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/teymTPbdBnkDxAo3L5ASnv.jpeg'
      ],
      'isDeleted': false,
      'seo': 'nike',
      'createdAt': '2019-11-26T16:49:04.800Z',
      'updatedAt': '2021-12-12T19:04:29.176Z'
    },
    {
      'uuid': 'd4879170-f41f-11eb-b207-0d7b88d1bd4b',
      'name': "Safirah's favorites",
      'description':
          '50% Instagram personality, 50% property consultant, but 100% hypebae. Safirah Elfira, shares her favorite sneaker picks for all the ladies out there. A great sneaker builds greater confidence. Some days you could rock a loud pair like the Air Jordan 1 High Tie Dye, and on some days maybe something a bit subtle like the Air Jordan 3 A Ma Maniere, and perhaps having a daily beater like the Dunk Low Orange Pearl, would defintely unleash your inner hypebae! says Safirah. Check out her favorite picks now!',
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/rTCzzBC46kMLrZxJhSgn7N.jpeg'
      ],
      'isDeleted': false,
      'seo': 'safirahs-favorites',
      'createdAt': '2021-08-03T05:58:31.175Z',
      'updatedAt': '2021-12-12T19:04:29.176Z'
    },
    {
      'uuid': '7157c420-cf2c-11eb-b5d3-77f0e16c95c2',
      'name': 'Bape',
      'description':
          'You can now get all the latest Bape tees on Ox Street. We ship from Singapore, to anywhere in APAC. Press buy to get yours now',
      'rank': 100,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/omdWDNvNbwckAhbMf1TkWp.jpeg'
      ],
      'isDeleted': false,
      'seo': 'bape',
      'createdAt': '2021-06-17T05:25:35.203Z',
      'updatedAt': '2021-12-12T19:04:29.177Z'
    },
    {
      'uuid': '7e15a6b0-0fb8-11ec-a42d-3120e4a861aa',
      'name': 'September Best Products',
      'description':
          "Here's a collection of the best sneakers sold in September. Think you've missed out on a pair? Cop em' now!",
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/d8pHy1ygYBtEJGinkobR2c.jpeg'
      ],
      'isDeleted': false,
      'seo': 'september-best-products',
      'createdAt': '2021-09-07T08:49:20.540Z',
      'updatedAt': '2021-12-12T19:04:29.176Z'
    },
    {
      'uuid': 'cbc73820-37b2-11ec-92ff-6bdae99adced',
      'name': 'Halloween Collection',
      'description':
          "Trick or Treat! Browse our picks of the best Halloween themed shoes, with the likes of the Dunk Low SB 'Night of Mischief' and the Air Max 97 'Halloween Slime', take your pick and flex hauntingly on the Night of Mischief! ",
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/f6F2SwXozi4a829Wa8M4kp.png'
      ],
      'isDeleted': false,
      'seo': 'halloween-collection',
      'createdAt': '2021-10-28T05:49:20.419Z',
      'updatedAt': '2021-12-12T19:04:29.177Z'
    },
    {
      'uuid': 'a7df8ee0-106c-11ea-892c-33b795b2e87e',
      'name': 'Converse',
      'description':
          'What Michael Jordan did with Nike in 1985 with the Air Jordan, Converse did in 1921 with a Basketball player named Chuck Taylor. The OG sneaker, the ultimate beater. No matter what your relationship is to the Chucks, everybody has owned a couple of pairs. Shop Converse now on Ox Street!<br><br>📸 @roflmaojosh',
      'rank': 9,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/3FnUyL7XPTEEQVD8e2qwLP.jpeg'
      ],
      'isDeleted': false,
      'seo': 'converse',
      'createdAt': '2019-11-26T16:49:04.718Z',
      'updatedAt': '2021-12-12T19:04:29.177Z'
    },
    {
      'uuid': 'b7d74080-0f8f-11ec-8807-65f0d5bf2821',
      'name': "Jeff's favorites",
      'description':
          'Philippine photographer and owner of clothing brand Ofresh, Jeff Ong, shares his favorite sneaker picks that he thinks are the greatest sneakers of all time. Ranging from the latest Air Jordan 1 x Travis Scott x Fragment till the Nike SB Dunk Low Pro x Travis Scott. Check em’ out now! <br><br>📸 @iamjeffong',
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/34W1V819jmt5MUw5VEhdi3.jpeg'
      ],
      'isDeleted': false,
      'seo': 'jeffs-favorites',
      'createdAt': '2021-09-07T03:57:28.072Z',
      'updatedAt': '2021-12-12T19:04:29.177Z'
    },
    {
      'uuid': 'a7ca0b10-106c-11ea-b13c-bfeb867c51bf',
      'name': 'Balenciaga',
      'description':
          'Now part of Gucci mother company Kering Group, Balenciaga was founded by a Spanish designer in 1917. One of the most innovative and avant-garde streetwear brands out there, Balenciaga always surprises with interesting silhouettes. Get your Balenciaga fix now on Ox Street!<br><br>📸 @lucasbld17',
      'rank': 13,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/owjCJzMvkNJ1NNVvfthVJY.jpeg'
      ],
      'isDeleted': false,
      'seo': 'balenciaga',
      'createdAt': '2019-11-26T16:49:04.578Z',
      'updatedAt': '2021-12-12T19:04:29.177Z'
    },
    {
      'uuid': 'f070df00-8b8d-11ea-9a82-955443f87415',
      'name': 'Fear of God',
      'description':
          'When Jerry Lorenzo founded Fear of God in 2012 he was unknown in the streetwear world and had no training, nor experience as a fashion designer. His brand hit the scene like a bomb. Known for innovative and high-end takes on American classic silhouettes, Kanye West and Kendall Jenner are among the vocal fans of the brand. FOG has been on a roll lately, and you can pick up those drops you missed-out on here on Ox Street!<br><br>📸 @vnsnk',
      'rank': 14,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/tKHM1HUxqGEbZETPEcYJQQ.jpeg'
      ],
      'isDeleted': false,
      'seo': 'fear-of-god',
      'createdAt': '2020-05-01T09:27:12.881Z',
      'updatedAt': '2021-12-12T19:04:29.177Z'
    },
  ],
  'pagination': {'page': 0, 'pageSize': 20, 'totalCount': 52}
};

final _page1 = {
  'data': [
    {
      'uuid': '106b6a70-d3f7-11eb-8907-0b6298aa73e9',
      'name': 'KIREI TH',
      'description':
          'ครั้งแรกกับความร่วมมือระหว่าง KIREI TH x Ox Street สำหรับประเทศไทย มีให้เลือกช็อปแล้วบน Ox Street คอลเลกชันลิมิเต็ดอิดิชั่นนี้ประกอบด้วย เสื้อยืดโอเวอร์ไซส์สีเทาฟอกจาง แมสก์ปิดปาก 2 แบบและรองเท้าสนีกเกอร์ 16 แบบที่คัดมาอย่างพิเศษโดย @be4vty ผู้ก่อตั้ง KIREI TH รีบมาช็อปเลยก่อนที่สินค้าจะขายหมด! The first KIREI TH x Ox Street merchandise collaboration for Thailand is available exclusively on Ox Street. This limited edition collection includes a washed grey oversized T-Shirt, 2 versions of face masks, and 16 sneakers specially selected by KIREI TH’s founder, @be4vty. Hurry, cop them now before they’re sold out!',
      'rank': 9,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/i6MrgU1erweYGY3ETvz6Le.png'
      ],
      'isDeleted': false,
      'seo': 'kirei-th',
      'createdAt': '2021-06-23T07:46:05.079Z',
      'updatedAt': '2021-12-12T19:04:29.177Z'
    },
    {
      'uuid': 'a7f6c060-106c-11ea-aa35-5f95aac46ea2',
      'name': 'Reebok',
      'description':
          'Founded in England, Reebok is a sporting goods company renowned for their workout shoes and their retro silhouettes. Under the reign of current Yeezy Creative Director Steven Smith, Reebok also has released such legendary silhouettes as the InstaPump. Get your Reebok favourites at Ox Street! <br><br>📸 @lucasblackman',
      'rank': 8,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/fUNdDTjKfydkwVtP6WYTx.jpeg'
      ],
      'isDeleted': false,
      'seo': 'reebok',
      'createdAt': '2019-11-26T16:49:04.870Z',
      'updatedAt': '2021-12-12T19:04:29.177Z'
    },
    {
      'uuid': 'dc0607e0-b22c-11eb-8a84-5b11841d413f',
      'name': 'Travis Scott',
      'description':
          'Travis Scott’s imaginative output has moved music and streetwear culture forwards with innovation and passion, stemming from his own sense of creative expression from his signature Cactus Jack branding to partnerships with Nike, McDonald’s and Fortnite. Get your Travis Scott collabs on Ox Street!',
      'rank': 15,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/5KiXsmhsVrRfw7YW8vfUtZ.jpeg'
      ],
      'isDeleted': false,
      'seo': 'travis-scott',
      'createdAt': '2021-05-11T07:45:30.462Z',
      'updatedAt': '2021-12-12T19:04:29.178Z'
    },
    {
      'uuid': 'a782eff0-106c-11ea-892c-33b795b2e87e',
      'name': 'adidas',
      'description':
          'Founded by Adolf (Adi) Dassler in Germany in 1949, adidas has a long heritage with many classic silhouettes like the Superstars. Yet at the same time constantly innovating. Propelled into the mainstay of modern street culture through early NYC rappers like Run DMC, adidas stays relevant through smart collaborations. Catch your 3 stripe favourites at Ox Street!<br><br>📸 @jemuelwong',
      'rank': 6,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/uUzTYKFLrWUvxC4KWuqwev.jpeg'
      ],
      'isDeleted': false,
      'seo': 'adidas',
      'createdAt': '2019-11-26T16:49:04.113Z',
      'updatedAt': '2021-12-12T19:04:29.178Z'
    },
    {
      'uuid': '59ff5f30-1d20-11ec-9161-357320fd8683',
      'name': "Allen's favorites",
      'description':
          'Fashion Consultant and Blogger, Allen Claudius from India shares his favorite picks ranging from the Air Jordan 3 A Ma Maniere right till the Yeezy Foam Runners. Check it out now! <br><br>📸 @bowtiesandbonesblog',
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/7NpzBRqkQSUWFdegtpKNoW.jpeg'
      ],
      'isDeleted': false,
      'seo': 'allens-favorites',
      'createdAt': '2021-09-24T10:15:32.771Z',
      'updatedAt': '2021-12-12T19:04:29.178Z'
    },
    {
      'uuid': 'a7ab8690-106c-11ea-aa35-5f95aac46ea2',
      'name': 'Asics',
      'description': 'Asics',
      'rank': 10,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/3RNKyhd5eLaJMZzLwHXmX5.jpeg'
      ],
      'isDeleted': false,
      'seo': 'asics',
      'createdAt': '2019-11-26T16:49:04.379Z',
      'updatedAt': '2021-12-12T19:04:29.178Z'
    },
    {
      'uuid': 'ffad1bd0-8b9e-11ea-9a82-955443f87415',
      'name': 'Sacai Duplicate',
      'description': 'sacai',
      'rank': 1000,
      'status': 'inactive',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/ieCaSGsdrgktjwnYMreWUf.jpeg'
      ],
      'isDeleted': false,
      'seo': 'sacai-duplicate',
      'createdAt': '2020-05-01T11:29:19.886Z',
      'updatedAt': '2021-12-12T19:04:29.178Z'
    },
    {
      'uuid': 'a7fa42d0-106c-11ea-b13c-bfeb867c51bf',
      'name': 'Vans',
      'description':
          "Started as \"Van Doren Rubber Company\", Paul Van Doren's Vans was just a normal shoe company at first. But through the early 80s, Vans high popularity in California earned it the reputation as THE shoe for skaters and surfers. Today, the Vans ‘Old Skool’ is a staple shoe for just about everyone. Get your Vans favourites at Ox Street now! <br><br>📸 @sneakophilo",
      'rank': 7,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/2EWYigBBdgj295FqumjZjA.jpeg'
      ],
      'isDeleted': false,
      'seo': 'vans',
      'createdAt': '2019-11-26T16:49:04.894Z',
      'updatedAt': '2021-12-12T19:04:29.178Z'
    },
    {
      'uuid': '8b0486e0-ea13-11eb-be71-730be382bf9c',
      'name': 'Hidden gems',
      'description':
          "From Air Jordan 1 Lows to Nike Dunk Highs, here are some hidden gems that you may have missed while browsing for new kicks on Ox Street. These are our best picks for affordable hype sneakers. From under retail pickups to criminally underrated pairs that everyone is sleeping on. Check out our selection and don't sleep on these pairs!",
      'rank': 1000,
      'status': 'inactive',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/jHnAiHWKM6N1mKUhvurZf9.jpeg'
      ],
      'isDeleted': false,
      'seo': 'hidden-gems',
      'createdAt': '2021-07-21T11:05:22.255Z',
      'updatedAt': '2021-12-12T19:04:29.178Z'
    },
    {
      'uuid': 'fb8738a0-f0fc-11eb-a2a9-41efe03a7725',
      'name': 'Camo Craze',
      'description':
          'Ten-Hut soldier! Browse to our selection of camouflage themed sneakers, from all the best brands like Nike, Adidas, Air Jordan, Yeezy, and many more. Some of these you may never even have known existed! As always, all of these specially selected camo sneakers are guaranteed authentic by Ox Street. Browse and buy now or make an offer!',
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/ny7aJydnx9dzAL9cedWLwa.jpeg'
      ],
      'isDeleted': false,
      'seo': 'camo-craze',
      'createdAt': '2021-07-30T06:11:30.731Z',
      'updatedAt': '2021-12-12T19:04:29.179Z'
    },
    {
      'uuid': 'f19526e0-1b45-11ec-b349-0367c005ee88',
      'name': 'Dunk Mania',
      'description':
          'Dunk Mania Oxffer! From 10am on 24 Sep till 11:59pm on 26 Sep, stand a chance to cop these Dunks at retail price by making your offers. To start, sign up for an Ox Street account or sign in, and make an offer for your selected Dunks and sizes. Your card will only be charged if you’re selected as one of our Oxffer winners, which will be announced on 27 Sep 2021. Bonus: 0% seller fees when you list and sell your Dunks on Ox Street.',
      'rank': 10,
      'status': 'inactive',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/cG6NURCkYw8jtvbN6j4qr3.jpeg'
      ],
      'isDeleted': false,
      'seo': 'dunk-mania',
      'createdAt': '2021-09-22T01:39:36.143Z',
      'updatedAt': '2021-12-12T19:04:29.179Z'
    },
    {
      'uuid': 'a12035e0-f59f-11eb-9bd6-1b94fab3af09',
      'name': 'Top 10 Sneakers in July',
      'description':
          "From the wonderful colors of the Dunk Low Free 99, the military themed Undefeated Air Force 1, right up till the iconic Fragment Dunk High 'Beijing' here's our list of the top 10 products of July!",
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/bPCcy711RRti7F6EHtFrh.jpeg'
      ],
      'isDeleted': false,
      'seo': 'top-10-sneakers-in-july',
      'createdAt': '2021-08-05T03:45:51.678Z',
      'updatedAt': '2021-12-12T19:04:29.179Z'
    },
    {
      'uuid': 'e8e49ff0-e461-11eb-93a0-351884823972',
      'name': '11.11 Best Picks',
      'description':
          'Ranging from the timeless Air Jordan 1 til the recent Nike SB Dunk uprising, these are some of the best picks for 11.11. Enjoy Free Shipping* to Singapore, Malaysia, Hong Kong, Taiwan, and the Philippines from 11-17 November. Cop your kicks now! <br.<br> *limited redemptions',
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/eEPyRg8uMh5CitWDhSLRvv.jpeg'
      ],
      'isDeleted': false,
      'seo': '1111-best-picks',
      'createdAt': '2021-07-14T05:11:13.519Z',
      'updatedAt': '2021-12-12T19:04:29.179Z'
    },
    {
      'uuid': 'a7e84170-106c-11ea-aa35-5f95aac46ea2',
      'name': 'New Balance',
      'description':
          'New Balance was founded as New Balance Arch Support Company in 1906 in Boston, Massachusetts. By 1960, New Balance arch supports had become very popular among budding athletes, some of whom even approached the brand asking for tailored sneakers. Over the years New Balance has stayed relevant by producing consistently high quality shoes and occasionally dipping into legendary territory. Get your New Balance here at Ox Street!<br><br>📸 @sim0nsteenberg',
      'rank': 8,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/d7RPoe9Ezz4eVGpiPmiZCe.jpeg'
      ],
      'isDeleted': false,
      'seo': 'new-balance',
      'createdAt': '2019-11-26T16:49:04.775Z',
      'updatedAt': '2021-12-12T19:04:29.179Z'
    },
    {
      'uuid': 'c6354c70-acb2-11eb-9327-71c6e1b64f1a',
      'name': 'Hari Raya Oxffers',
      'description':
          "This Hari Raya we are dropping 4 awesome pairs of sneakers at retail price. Entering is simple. Just tap the product you want, press 'Make Offer', and follow the steps through checkout. You will need a credit or debit card to enter, but don't worry. You will not be charged unless you are the winner! ",
      'rank': 1000,
      'status': 'inactive',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/9ng9VN92VVtqdMHE1435wu.jpeg'
      ],
      'isDeleted': false,
      'seo': 'hari-raya-oxffers',
      'createdAt': '2021-05-04T08:28:59.447Z',
      'updatedAt': '2021-12-12T19:04:29.179Z'
    },
    {
      'uuid': 'a7e3fbb0-106c-11ea-b13c-bfeb867c51bf',
      'name': 'Fila',
      'description': 'Fila',
      'rank': 12,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/jt4fTGPUYBaQ2w4yy3SdSC.jpeg'
      ],
      'isDeleted': false,
      'seo': 'fila',
      'createdAt': '2019-11-26T16:49:04.748Z',
      'updatedAt': '2021-12-12T19:04:29.180Z'
    },
    {
      'uuid': '7e2cdd00-6205-11eb-afa9-bde8d8092974',
      'name': 'Last Minute CNY',
      'description':
          'Get your last minute fix of new kicks for the Year of the Ox! We guarantee shipping the same working day if orders are made before 1pm, or shipped the next working day if after 1pm or on the weekend.',
      'rank': 1,
      'status': 'inactive',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/a3tci6XxuZd1voxBmTYUBF.jpeg'
      ],
      'isDeleted': false,
      'seo': 'last-minute-cny',
      'createdAt': '2021-01-29T07:42:09.617Z',
      'updatedAt': '2021-12-12T19:04:29.180Z'
    },
    {
      'uuid': 'a7fe1360-106c-11ea-892c-33b795b2e87e',
      'name': 'Yeezy',
      'description':
          'The Yeezy line by Kanye West has hit the scene hard since Yeezy’s move from Nike to Adidas in 2015. Designed by Ye himself, all designs are unique and not based on any existing adidas model. Kanye on his own is already a superstar, so it’s not surprising that most Yeezy drops sell out quickly. Get your Yeezy needs at Ox Street!<br><br>📸 @hypetobs',
      'rank': 2,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/nLqvGy2jubWfEVLidTUcvt.jpeg'
      ],
      'isDeleted': false,
      'seo': 'yeezy',
      'createdAt': '2019-11-26T16:49:04.918Z',
      'updatedAt': '2021-12-12T19:04:29.180Z'
    },
    {
      'uuid': 'b290d940-cf2c-11eb-ad33-05db743c9cb6',
      'name': 'ADLV',
      'description':
          'You can now get all the latest Anti Social Social Club tees on Ox Street. We ship from Singapore, to anywhere in APAC. Press buy to get yours now',
      'rank': 100,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/5tVtKAftAt9nBJmk2NJxKP.png'
      ],
      'isDeleted': false,
      'seo': 'adlv',
      'createdAt': '2021-06-17T05:27:24.628Z',
      'updatedAt': '2021-12-12T19:04:29.180Z'
    },
    {
      'uuid': 'bc8fe0b0-c4b2-11ea-aa58-67174f197bea',
      'name': 'On',
      'description':
          'On was born in the Swiss alps with one goal: to revolutionize the sensation of running. It’s all based on one radical idea. Soft landings followed by explosive take-offs.',
      'rank': 18,
      'status': 'inactive',
      'justDropped': true,
      'imageUrls': [''],
      'isDeleted': false,
      'seo': 'on',
      'createdAt': '2020-07-13T02:44:13.499Z',
      'updatedAt': '2021-12-12T19:04:29.180Z'
    },
  ],
  'pagination': {'page': 1, 'pageSize': 20, 'totalCount': 52}
};

final _page2 = {
  'data': [
    {
      'uuid': 'a13108d0-92c5-11eb-bd51-95294f93a317',
      'name': 'Comme des Garcons',
      'description':
          'Comme des Garçons (also known as CDG) is a Japanese fashion label founded and headed by Rei Kawakubo in Paris. The label began in 1969 and the company was founded in 1973. Its French flagship store is in Paris. It also establishes country-wide and world-wide store chain for various lines of products, including Dover Street Market, in major cities such as London, Melbourne, Hong Kong, and New York City.',
      'rank': 3,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/kVXiThRUb1yqWJi9YGNVbr.jpeg'
      ],
      'isDeleted': false,
      'seo': 'comme-des-garcons',
      'createdAt': '2021-04-01T08:38:27.550Z',
      'updatedAt': '2021-12-12T19:04:29.180Z'
    },
    {
      'uuid': '2cfcb1b0-ea0b-11eb-85e5-3334541656ac',
      'name': "Aiman's favorites",
      'description':
          'Malaysian Content Creator and Ampang homeboy, Aiman Danial, grew up loving basketball and skateboarding which influenced him to start collecting sneakers. Check out his personal favorite picks that you can also rock anytime, anywhere.<br><br>📸 @aimandvnial',
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/7baQTYFoM9SxQ4qHdbMBP9.png'
      ],
      'isDeleted': false,
      'seo': 'aimans-favorites',
      'createdAt': '2021-07-21T10:05:28.524Z',
      'updatedAt': '2021-12-12T19:04:29.180Z'
    },
    {
      'uuid': '35f729e0-8141-11eb-b886-3d38e2a148e0',
      'name': 'Supreme',
      'description':
          "Supreme is an American skateboarding lifestyle brand established in New York City in April 1994. The brand is targeted at the skateboarding and hip hop cultures, and youth culture in general. The brand produces clothes and accessories and also manufactures skateboards.  The red box logo with \"Supreme\" in white Futura Heavy Oblique is debated to be largely based on Barbara Kruger's propaganda art.",
      'rank': 9,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/kHHmvZZNM98QAxoAXgFBof.jpeg'
      ],
      'isDeleted': false,
      'seo': 'supreme',
      'createdAt': '2021-03-10T01:37:44.318Z',
      'updatedAt': '2021-12-12T19:04:29.180Z'
    },
    {
      'uuid': 'd16c0b70-8b8d-11ea-9a82-955443f87415',
      'name': 'sacai',
      'description':
          'Founded in 1999 by Chitose Abe, Sacai has established themselves as a powerful force in both fashion and sneaker game. Did you know she was a pattern maker at Comme des Garçons before joining Junya Watanabe. With help and guidance from Rei Kuwakubo, Sacai has flourished since their runway show in 2011 and now retails at over 175 international locations.<br><br>📸 @brandon_louie',
      'rank': 12,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/sazWLJ4sD2sexz3CRuGWsP.jpeg'
      ],
      'isDeleted': false,
      'seo': 'sacai',
      'createdAt': '2020-05-01T09:26:20.840Z',
      'updatedAt': '2021-12-12T19:04:29.180Z'
    },
    {
      'uuid': '195d8da0-f2c6-11eb-a7fe-67c17d3240ae',
      'name': "Amin's favorites",
      'description':
          "Malaysian Videographer and Sneaker Collector Amin shares his personal picks of sneakers that he thinks is great to wear indoors and outdoors, while running a shoot. Amin's favorites varies from Nike SB Dunk Lows to Air Jordans and Yeezy's. Check em' out now!<br><br>📸 @aminkamid",
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/cM8rmPjoRW2wd7P7C5mZmH.jpeg'
      ],
      'isDeleted': false,
      'seo': 'amins-favorites',
      'createdAt': '2021-08-01T12:43:40.794Z',
      'updatedAt': '2021-12-12T19:04:29.181Z'
    },
    {
      'uuid': 'c57a32d0-cf2d-11eb-ad33-05db743c9cb6',
      'name': 'Anti Social Social Club',
      'description':
          'You can now get all the latest ADLV tees on Ox Street. We ship from Singapore, to anywhere in APAC. Press buy to get yours now',
      'rank': 100,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/64x2B6kve6ZQcpbNBPkaph.png'
      ],
      'isDeleted': false,
      'seo': 'anti-social-social-club',
      'createdAt': '2021-06-17T05:35:05.853Z',
      'updatedAt': '2021-12-12T19:04:29.181Z'
    },
    {
      'uuid': 'a79b0bd0-106c-11ea-892c-33b795b2e87e',
      'name': 'Air Jordan',
      'description':
          'Jordan brand by Nike is fueled by the one and only, Michael Jordan. Predominantly focused on Basketball gear, the classics that are now more suited for lifestyle wear are what makes the Jordan brand iconic. Jordan brand is also the first player signature line to be a dedicated brand. Get your Jumpman favourites at Ox Street!<br><br>📸 @natejrawlings',
      'rank': 2,
      'status': 'active',
      'justDropped': false,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/p6MVv5SVDGsrNyUfzQHzNF.jpeg'
      ],
      'isDeleted': false,
      'seo': 'air-jordan',
      'createdAt': '2019-11-26T16:49:04.270Z',
      'updatedAt': '2021-12-12T19:04:29.181Z'
    },
    {
      'uuid': '36f07c40-f106-11eb-8cf5-1f070fddcf3b',
      'name': 'Singapore Turns 56',
      'description':
          "Inspired by the colors of the Singapore National flag, here are some of the best sneakers in Red and White. A timeless color combination in any country, we choose a mix of legendary models like the Air Jordan 4 'Fire Red' and many different variations on the iconic 'Chicago' colorway. But we also have good choices  at a smaller pricepoint with the Air Max 90 'Infrared' or Air Jordan 1 Lows. Take your pick and make sure to nail that patriotic flex this National Day!",
      'rank': 1000,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/qE21wAUzCW4FPJcCEexqtc.jpeg'
      ],
      'isDeleted': false,
      'seo': 'singapore-turns-56',
      'createdAt': '2021-07-30T07:17:35.876Z',
      'updatedAt': '2021-12-12T19:04:29.181Z'
    },
    {
      'uuid': 'fb297c10-cf2d-11eb-ad33-05db743c9cb6',
      'name': 'Supreme',
      'description':
          'You can now get all the latest Supreme tees on Ox Street. We ship from Singapore, to anywhere in APAC. Press buy to get yours now',
      'rank': 100,
      'status': 'inactive',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/wedRasyVCgj6Q6HQjPg5Jf.jpeg'
      ],
      'isDeleted': false,
      'seo': 'supreme',
      'createdAt': '2021-06-17T05:36:35.921Z',
      'updatedAt': '2021-12-12T19:04:29.181Z'
    },
    {
      'uuid': 'ca4919a0-ccb4-11eb-b8fe-153febab75df',
      'name': "Father's Day Oxffer",
      'description':
          'Father’s Day Exclusive Oxffer featuring the New Balance 992 ‘Grey’! From 15 June, 10am to 17 June, 10am, stand a chance to cop the ultimate sneakers for your dad for only SGD 20! Here are the steps to take: Step 1: Sign up / log in to your Ox Street account via our mobile app or desktop Step 2: Make your SGD20 offer ONLY on this Father’s Day Oxffer page Make your SGD20 offer on your selected sneaker size Your payment card will not be charged when you make the offer, a charge of SGD20 and the relevant shipping costs will only take place once a lucky winner is randomly selected when the event ends on 17 June 2021 You will receive a confirmation email once your offer has been made successfully Step 3: Post on Instagram using #oxstreetfathersday for additional chances to win Once your offer has been made, head over to your Instagram to share a post of your dad and state why he should win the New Balance 992 ‘Grey’ sneakers for Father’s Day. We’re looking for interesting stories and creative posts, so feel free to go all out! You may start your post caption with: #oxstreetfathersday This Father’s Day, I would like to win a pair of New Balance 992 ‘Grey’ sneakers for my dad because... Remember to use the hashtag #oxstreetfathersday and make sure your account is set to public for us to view your post Step 4: Wait till 17 June 2021 for the results One lucky winner will automatically purchase a pair of New Balance 992 ‘Grey’ sneakers for only SGD20 (additional shipping costs apply) and will receive an email confirmation of the order. We will also announce the winner via our Instagram Stories, so stay tuned The sneakers will be shipped out to the winner on 17 June 2021',
      'rank': 1,
      'status': 'inactive',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/rpoPggBPEtXx38Km1FwLeU.jpeg'
      ],
      'isDeleted': false,
      'seo': 'fathers-day-oxffer',
      'createdAt': '2021-06-14T02:04:02.491Z',
      'updatedAt': '2021-12-12T19:04:29.181Z'
    },
    {
      'uuid': '0b8536c0-d26d-11eb-9d42-c1028d047c89',
      'name': 'Essentials',
      'description':
          'You can now get all the latest Essentials tees on Ox Street. We ship from Singapore, to anywhere in APAC. Press buy to get yours now',
      'rank': 100,
      'status': 'active',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/vottHR2kwkAhcMrpXfxq8e.png'
      ],
      'isDeleted': false,
      'seo': 'essentials',
      'createdAt': '2021-06-21T08:45:35.149Z',
      'updatedAt': '2021-12-12T19:04:29.181Z'
    },
    {
      'uuid': '07774020-2bdb-11eb-9bc2-27f16679a524',
      'name': 'Black Friday',
      'description':
          'Between 23 November and 27 November we are dropping 8 sneakers for retail or lower. Sign up on Ox Street and make your offers below. One winner per product will buy automatically the day after the deadline. ',
      'rank': 1,
      'status': 'inactive',
      'justDropped': true,
      'imageUrls': [
        'https://resourceoxstreet.s3-ap-southeast-1.amazonaws.com/brand-images/pLkTJDE1Z8cCodP2jC6qy1.jpeg'
      ],
      'isDeleted': false,
      'seo': 'black-friday',
      'createdAt': '2020-11-21T09:22:08.802Z',
      'updatedAt': '2021-12-12T19:04:29.181Z'
    }
  ],
  'pagination': {'page': 2, 'pageSize': 20, 'totalCount': 52}
};
