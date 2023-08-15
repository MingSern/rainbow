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

  testWidgets('Home page able to tap and change color', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomePage(),
      ),
    );

    final type = find.byType(Scaffold);
    final scaffold = tester.element(type);

    final initialColor = Theme.of(scaffold).scaffoldBackgroundColor;
    await tester.tap(type);
    await tester.pump();
    final finalColor = Theme.of(scaffold).scaffoldBackgroundColor;

    expect(initialColor, isNot(finalColor));
  });
}
