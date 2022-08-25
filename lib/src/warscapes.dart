import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:warscapes/src/map.dart';
import 'package:warscapes/src/soldier.dart';

const double kMapSize = 500;
const Rect kMapBounds = Rect.fromLTRB(
  -kMapSize,
  -kMapSize,
  kMapSize,
  kMapSize,
);

class WarscapesGame extends FlameGame with HasKeyboardHandlerComponents {
  @override
  bool get debugMode => kDebugMode;

  late final World world;
  late final CameraComponent currentCamera;
  final soldiers = <Soldier>[];
  final int numberOfPlayers = 2;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    // TODO load menu
    // TODO get number of players
    world = World();
    add(world);
    final map = WarscapesMap();
    world.add(map);
    add(FpsTextComponent());

    for (var i = 0; i < numberOfPlayers; i++) {
      final soldier = Soldier(
        i,
        radius: 20.0,
      )..position = Vector2(0, 0);
      soldiers.add(soldier);
      world.add(soldier);
    }
    currentCamera = CameraComponent(world: world)..follow(soldiers[0]);
    add(currentCamera);
  }
}
