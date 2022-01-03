import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:simple_sneaker_shop/app/app.dart';
import 'package:simple_sneaker_shop/products/presentation/pages/product_page.dart';

void main() {
  group('App', () {
    testWidgets('renders ProductPage', (tester) async {
      await mockNetworkImagesFor(() async {
        await tester.pumpWidget(const ProviderScope(child: App()));
        await tester.pumpAndSettle();
        expect(find.byType(ProductPage), findsOneWidget);
      });
    });
  });
}
