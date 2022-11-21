import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:warscapes/src/game/game_manager.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final networkingManager = ref.watch(networkingManagerProvider);
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            ref.read(gameManagerProvider).joinGame();
          },
          icon: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
