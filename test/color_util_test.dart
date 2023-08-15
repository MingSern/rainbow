import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow/utils/color_util.dart';

void main() {
  testWidgets('Generating random color', (tester) async {
    final colorA = ColorUtil.generate();
    final colorB = ColorUtil.generate();

    expect(colorA, isNot(colorB));
  });

  testWidgets('Checking brightness of a color', (tester) async {
    final brightnessA = ColorUtil.checkBrightness(Colors.black);
    final brightnessB = ColorUtil.checkBrightness(Colors.white);

    expect(brightnessA, false);
    expect(brightnessB, true);
  });
}
