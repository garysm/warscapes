import 'package:flutter/material.dart';
import 'package:warscapes/src/home_screen.dart';

class WarscapesApp extends StatelessWidget {
  const WarscapesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
