import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:warscapes/src/networking/game_networking_manager.dart';

final gameManagerProvider = Provider(
  (ref) => GameManager(
    ref.watch(networkingManagerProvider),
  ),
);

class GameManager {
  final GameNetworkingManager _gameNetworkingManager;

  GameManager(this._gameNetworkingManager);

  void joinGame() {
    _gameNetworkingManager.joinGame();
  }
}
