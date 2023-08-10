import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rainbow/utils/color_util.dart';
import 'package:rainbow/widgets/header_text.dart';

/// The first page where users are going to see
class HomePage extends StatefulWidget {
  /// The first page where users are going to see
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _colorUtil = ColorUtil();
  Color _backgroundColor = Colors.white;
  bool _isBright = true;

  void _onTap() {
    HapticFeedback.mediumImpact();
    _backgroundColor = _colorUtil.generate();
    _isBright = _colorUtil.checkBrightness(_backgroundColor);
    setState(() => {});
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
