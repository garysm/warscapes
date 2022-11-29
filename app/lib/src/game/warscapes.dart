import 'dart:async';
import 'dart:convert';
import 'package:common/warscapes_api.dart';
import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:warscapes/src/game/components/enemy_soldier.dart';
import 'package:warscapes/src/game/components/map.dart';
import 'package:warscapes/src/game/components/player_soldier.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

const double kMapSize = 500;
const kMapBounds = Rect.fromLTRB(
  -kMapSize,
  -kMapSize,
  kMapSize,
  kMapSize,
);

class WarscapesGame extends FlameGame with HasKeyboardHandlerComponents {
  @override
  bool get debugMode => kDebugMode;

  late final WebSocketChannel _socket;
  late Stream<dynamic> _socketStream;
  Stream<GameMessage?>? gameEventStream;
  StreamSubscription<GameMessage?>? _gameEventStreamSubscription;

  late final World world;
  late final CameraComponent currentCamera;
  late PlayerSoldier player;

  WarscapesGame() {
    player = PlayerSoldier();
    _gameEventStreamSubscription?.cancel();
    _gameEventStreamSubscription = null;
    _socket = WebSocketChannel.connect(Uri.parse('ws://localhost:8080/ws'));
    _socketStream = _socket.stream;
    gameEventStream = _socketStream.map(
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
    ).asBroadcastStream();
    _gameEventStreamSubscription = gameEventStream?.listen(_handleGameEvents);
  }

  void _handleGameEvents(GameMessage? message) {
    message?.whenOrNull(
      message: (String message) {},
      createPlayer: (String username, double? x, double? y) {
        if (username == player.id) {
          final soldier = player..position = Vector2(x!, y!);
          world.add(soldier);
          currentCamera = CameraComponent(world: world)..follow(soldier);
          add(currentCamera);
        } else {
          final enemySoldier = EnemySoldier(id: username)
            ..position = Vector2(x!, y!);
          world.add(enemySoldier);
        }
      },
      playerIdle: (MoveData moveData) {},
      playerMoved: (MoveData moveData) {},
      playerShoot: (WarscapesPlayer playerShooter) {},
    );
  }

  void movePlayer(PlayerPositionData movementData) {
    sendEventToServer(
      GameMessage.playerMoved(
        moveData: MoveData(
          playerId: player.id,
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
    await _gameEventStreamSubscription?.cancel();
  }

  @override
  Future<void> onLoad() async {
    world = World();
    add(world);
    final map = WarscapesMap();
    world.add(map);
    add(FpsTextComponent());
    sendEventToServer(GameMessage.createPlayer(username: player.id));
  }
}
