import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rainbow/widgets/header_text.dart';

/// The first page where users are going to see
class HomePage extends StatefulWidget {
  /// The first page where users are going to see
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _random = Random();
  Color _backgroundColor = Colors.white;
  bool _isBright = true;

  void _onTap() {
    HapticFeedback.mediumImpact();
    _backgroundColor = _generateColor();
    _isBright = _determineBrightness(_backgroundColor);
    setState(() => {});
  }

  Color _generateColor() {
    final value = _random.nextDouble();
    final hexCode = (value * 0xFFFFFF).toInt();

    return Color(hexCode).withOpacity(1.0);
  }

  bool _determineBrightness(Color color) {
    const brightnessThreshold = 0.5;
    final isbrighter = color.computeLuminance() > brightnessThreshold;

    return isbrighter;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value:
            _isBright ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
        child: Theme(
          data: ThemeData(
            scaffoldBackgroundColor: _backgroundColor,
            brightness: _isBright ? Brightness.light : Brightness.dark,
          ),
          child: const Scaffold(
            body: Center(
              child: HeaderText("Hello there"),
            ),
          ),
        ),
      ),
    );
  }
}
