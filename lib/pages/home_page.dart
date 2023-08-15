import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rainbow/utils/color_util.dart';
import 'package:rainbow/utils/theme_util.dart';
import 'package:rainbow/widgets/header_text.dart';

/// The first page where users are going to see
class HomePage extends StatefulWidget {
  /// The first page where users are going to see
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor = Colors.white;

  void _onTap() {
    HapticFeedback.mediumImpact();
    _backgroundColor = ColorUtil.generate();
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Theme(
        data: ThemeUtil.adaptBrightness(_backgroundColor),
        child: Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: HeaderText("Hello there"),
          ),
        ),
      ),
    );
  }
}
