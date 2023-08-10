import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow/pages/home_page.dart';

void main() {
  testWidgets('Home page has a hello there text', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomePage(),
      ),
    );

    final textFinder = find.text('Hello there');

    expect(textFinder, findsOneWidget);
  });
}
