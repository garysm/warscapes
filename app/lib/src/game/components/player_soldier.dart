import 'dart:async';

import 'package:common/warscapes_api.dart';
import 'package:flame/components.dart';
import 'package:flutter/services.dart';
import 'package:uuid/uuid.dart';
import 'package:warscapes/src/game/components/soldier.dart';
import 'package:warscapes/src/game/warscapes.dart';

class PlayerSoldier extends Soldier
    with KeyboardHandler, HasGameRef<WarscapesGame> {
  final Vector2 _velocity;
  static const double speed = 100;
  late Timer _timer;
  StreamSubscription<GameMessage?>? _gameEventStreamSubscription;

  PlayerSoldier() : _velocity = Vector2.zero() {
    id = const Uuid().v4();
  }

  void _handleGameEvents(GameMessage? message) {
    message?.whenOrNull(
      message: (String message) {},
      playerIdle: (MoveData moveData) {},
      playerMoved: (MoveData moveData) {
        if (moveData.playerId == id) {
          final newX = moveData.x;
          final newY = moveData.y;
          position.x = newX;
          position.y = newY;
        }
      },
      playerShoot: (WarscapesPlayer playerShooter) {},
    );
  }

  @override
  Future<void>? onLoad() {
    _gameEventStreamSubscription?.cancel();
    _gameEventStreamSubscription = null;
    _gameEventStreamSubscription =
        gameRef.gameEventStream?.listen(_handleGameEvents);
    _timer = Timer(
      1,
      repeat: true,
      onTick: () {
        _updatePosition(position.x, position.y);
      },
    );
    _timer.start();
    return super.onLoad();
  }

  @override
  void update(double dt) {
    _timer.update(dt);
    double x = (position.x + (_velocity.x * dt));
    double y = (position.y + (_velocity.y * dt));
    if (x <= -kMapSize + radius) {
      x = -kMapSize + radius;
    }
    if (x >= kMapSize - radius) {
      x = kMapSize - radius;
    }
    if (y <= -kMapSize + radius) {
      y = -kMapSize + radius;
    }
    if (y >= kMapSize - radius) {
      y = kMapSize - radius;
    }
    // Send updates to server upon position change
    if (position.x != x || position.y != y) {
      _updatePosition(x, y);
    }
    super.update(dt);
  }

  @override
  bool onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    final isKeyDown = event is RawKeyDownEvent;
    final keyLeft = (event.logicalKey == LogicalKeyboardKey.arrowLeft) ||
        (event.logicalKey == LogicalKeyboardKey.keyA);
    final keyRight = (event.logicalKey == LogicalKeyboardKey.arrowRight) ||
        (event.logicalKey == LogicalKeyboardKey.keyD);
    final keyUp = (event.logicalKey == LogicalKeyboardKey.arrowUp) ||
        (event.logicalKey == LogicalKeyboardKey.keyW);
    final keyDown = (event.logicalKey == LogicalKeyboardKey.arrowDown) ||
        (event.logicalKey == LogicalKeyboardKey.keyS);

    if (isKeyDown) {
      if (keyLeft) {
        _velocity.x = -speed;
      } else if (keyRight) {
        _velocity.x = speed;
      } else if (keyUp) {
        _velocity.y = -speed;
      } else if (keyDown) {
        _velocity.y = speed;
      }
    } else {
      final hasLeft = keysPressed.contains(LogicalKeyboardKey.arrowLeft) ||
          keysPressed.contains(LogicalKeyboardKey.keyA);
      final hasRight = keysPressed.contains(LogicalKeyboardKey.arrowRight) ||
          keysPressed.contains(LogicalKeyboardKey.keyD);
      final hasUp = keysPressed.contains(LogicalKeyboardKey.arrowUp) ||
          keysPressed.contains(LogicalKeyboardKey.keyW);
      final hasDown = keysPressed.contains(LogicalKeyboardKey.arrowDown) ||
          keysPressed.contains(LogicalKeyboardKey.keyS);
      if (hasLeft && hasRight) {
        // Leave the current horizontal speed unchanged
      } else if (hasLeft) {
        _velocity.x = -speed;
      } else if (hasRight) {
        _velocity.x = speed;
      } else {
        _velocity.x = 0;
      }
      if (hasUp && hasDown) {
        // Leave the current vertical speed unchanged
      } else if (hasUp) {
        _velocity.y = -speed;
      } else if (hasDown) {
        _velocity.y = speed;
      } else {
        _velocity.y = 0;
      }
    }
    return super.onKeyEvent(event, keysPressed);
  }

  void _updatePosition(double x, double y) {
    gameRef.movePlayer(
      PlayerPositionData(
        direction: angle,
        x: x,
        y: y,
      ),
    );
  }

  @override
  Future<void> onRemove() async {
    await _gameEventStreamSubscription?.cancel();
    super.onRemove();
  }
}
