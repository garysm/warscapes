import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:warscapes/src/game/warscapes.dart';

class WarscapesApp extends StatelessWidget {
  const WarscapesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GameWidget(game: WarscapesGame()),
    );
  }
}
