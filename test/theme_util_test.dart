import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow/utils/theme_util.dart';

void main() {
  testWidgets('Adapt theme on different brightness of color', (tester) async {
    final themeDataA = ThemeUtil.adaptBrightness(Colors.black);
    final themeDataB = ThemeUtil.adaptBrightness(Colors.white);

    expect(themeDataA, isNot(themeDataB));
  });
}
