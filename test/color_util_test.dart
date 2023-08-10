import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow/utils/color_util.dart';

void main() {
  testWidgets('Generating random color', (tester) async {
    final colorUtil = ColorUtil();

    final colorA = colorUtil.generate();

    final colorB = colorUtil.generate();

    expect(colorA, isNot(colorB));
  });

  testWidgets('Checking brighness of a color', (tester) async {
    final colorUtil = ColorUtil();

    final brightnessA = colorUtil.checkBrightness(Colors.black);

    final brightnessB = colorUtil.checkBrightness(Colors.white);

    expect(brightnessA, false);

    expect(brightnessB, true);
  });
}
