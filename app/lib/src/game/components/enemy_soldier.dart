import 'dart:async';

import 'package:common/warscapes_api.dart';
import 'package:flame/components.dart';
import 'package:warscapes/src/game/components/soldier.dart';
import 'package:warscapes/src/game/warscapes.dart';

class EnemySoldier extends Soldier with HasGameRef<WarscapesGame> {
  StreamSubscription<GameMessage?>? _gameEventStreamSubscription;

  EnemySoldier({required String id}) {
    this.id = id;
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

    return super.onLoad();
  }

  @override
  Future<void> onRemove() async {
    await _gameEventStreamSubscription?.cancel();
    super.onRemove();
  }
}
