// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow/pages/home_page.dart';

void main() {
  testWidgets('Home page has a hello there text', (tester) async {
    await tester.pumpWidget(const HomePage());

    final textFinder = find.text('Hello there');

    expect(textFinder, findsOneWidget);
  });
}
