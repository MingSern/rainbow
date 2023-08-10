import 'package:flutter/material.dart';
import 'package:rainbow/pages/home_page.dart';

/// The main app for this project
class RainbowApp extends StatelessWidget {
  /// The main app for this project
  const RainbowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rainbow',
      home: HomePage(),
    );
  }
}
