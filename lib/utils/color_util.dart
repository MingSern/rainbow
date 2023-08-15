import 'dart:math';

import 'package:flutter/material.dart';

/// A utility class that helps developer with colors
class ColorUtil {
  static final _random = Random();

  const ColorUtil._();

  /// Generates a random color. e.g:
  /// ```dart
  /// final colorUtil = new ColorUtil();
  /// final color = colorUtil.generate();
  /// ```
  static Color generate() {
    final value = _random.nextDouble();
    final hexCode = (value * 0xFFFFFF).toInt();

    return Color(hexCode).withOpacity(1.0);
  }

  /// Checking the brigness of a color. e.g:
  /// ```dart
  /// final colorUtil = new ColorUtil();
  /// final isBright = colorUtil.checkBrightness(Color.white);
  /// // returns true
  /// ```
  static bool checkBrightness(Color color) {
    const brightnessThreshold = 0.5;
    final isBrighter = color.computeLuminance() > brightnessThreshold;

    return isBrighter;
  }
}
