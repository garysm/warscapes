import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:warscapes/src/networking/game_networking.dart';
import 'package:warscapes/src/warscapes.dart';

class WarscapesApp extends StatelessWidget {
  const WarscapesApp({super.key});

  @override
  Widget build(BuildContext context) {
    final gameWidget = GameWidget(game: WarscapesGame());
    return MaterialApp(
      title: 'Warscapes',
      home: Scaffold(
        // Only listen to networking if not debugging
        body: kDebugMode
            ? gameWidget
            : Consumer(
                builder: (context, ref, child) {
                  final networking = ref.watch(gameNetworkingProvider);
                  return networking.maybeWhen(
                    connected: (List<String> clients) => Stack(
                      children: [
                        gameWidget,
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'Connected',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    orElse: () => Container(
                      color: const Color.fromARGB(255, 82, 83, 84),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'Disconnected',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () async {
                                await ref
                                    .read(gameNetworkingProvider.notifier)
                                    .retry();
                              },
                              child: const Text('Attempt to reconnect'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
