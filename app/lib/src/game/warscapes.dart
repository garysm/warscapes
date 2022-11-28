import 'dart:async';
import 'dart:convert';

import 'package:common/warscapes_api.dart';
import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:warscapes/src/game/components/map.dart';
import 'package:warscapes/src/game/components/player_soldier.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

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

  late final IOWebSocketChannel _socket;
  late Stream<dynamic> _socketStream;
  StreamSubscription<GameMessage?>? _gameEventStream;

  late final World world;
  late final CameraComponent currentCamera;
  late final int id = 1;
  late PlayerSoldier player;

  WarscapesGame() {
    _gameEventStream?.cancel();
    _gameEventStream = null;
    _socket = IOWebSocketChannel.connect('ws://localhost:8080/ws');
    _socketStream = _socket.stream;
    _gameEventStream = _socketStream.map(
      (data) {
        if (data is String) {
          try {
            final json = jsonDecode(data);
            final gameMessage = GameMessage.fromJson(json);
            return gameMessage;
          } on FormatException catch (e) {
            return null;
          }
        }
      },
    ).listen(_handleGameEvents);
  }

  _handleGameEvents(GameMessage? message) {
    message?.whenOrNull(
      message: (String message) {},
      createPlayer: (String username) {
        final soldier = PlayerSoldier(id, radius: 20.0)
          ..position = Vector2(0, 0);
        world.add(soldier);
        currentCamera = CameraComponent(world: world)..follow(soldier);
        add(currentCamera);
      },
      playerMoved: (MoveData moveData) {},
      playerShoot: (WarscapesPlayer playerShooter) {},
    );
  }

  void movePlayer(PlayerPositionData movementData) {
    sendEventToServer(
      GameMessage.playerMoved(
        moveData: MoveData(
          playerId: id,
          direction: movementData.direction,
          x: movementData.x,
          y: movementData.y,
        ),
      ),
    );
  }

  void sendEventToServer(GameMessage message) {
    final json = message.toJson();
    final messageString = jsonEncode(json);
    _socket.sink.add(messageString);
  }

  @override
  Future<void> onRemove() async {
    await _socket.sink.close(status.goingAway);
    await _gameEventStream?.cancel();
  }

  @override
  Future<void> onLoad() async {
    world = World();
    add(world);
    final map = WarscapesMap();
    world.add(map);
    add(FpsTextComponent());

    // for (var i = 0; i < numberOfPlayers; i++) {
    //   final soldier = PlayerSoldier(
    //     i,
    //     radius: 20.0,
    //   )..position = Vector2(0, 0);
    //   soldiers.add(soldier);
    //   world.add(soldier);
    // }
    // currentCamera = CameraComponent(world: world)..follow(soldiers[0]);
    // add(currentCamera);
  }
}
