import 'package:flutter/material.dart';

/// A specialise widget to handle header style text
class HeaderText extends StatelessWidget {
  /// The [text] parameter must not be null
  final String text;

  /// A specialise widget to handle header style text
  const HeaderText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    );
  }
}
