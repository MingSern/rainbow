import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rainbow/utils/color_util.dart';

/// A utility class that helps developer with themes
class ThemeUtil {
  const ThemeUtil._();

  /// An adaptable theme function that determine the brightness/color of the app
  static ThemeData adaptBrightness(Color color) {
    final isBrightColor = ColorUtil.checkBrightness(color);

    if (isBrightColor) {
      return ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: color,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: color,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: color,
          ),
        ),
      );
    }

    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: color,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: color,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarColor: color,
        ),
      ),
    );
  }
}
