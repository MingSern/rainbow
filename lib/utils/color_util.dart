import 'dart:math';

import 'package:flutter/material.dart';

/// A class that helps generating color and determine the brighness of the color
class ColorUtil {
  final _random = Random();

  /// Generates a random color. e.g:
  /// ```dart
  /// final colorUtil = new ColorUtil();
  /// final color = colorUtil.generate();
  /// ```
  Color generate() {
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
  bool checkBrightness(Color color) {
    const brightnessThreshold = 0.5;
    final isbrighter = color.computeLuminance() > brightnessThreshold;

    return isbrighter;
  }
}
