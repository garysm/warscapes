import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const double kMapSize = 1500;
const Rect kMapBounds = Rect.fromLTRB(
  -kMapSize,
  -kMapSize,
  kMapSize,
  kMapSize,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GameWidget(
      game: Warscapes(),
    ),
  );
}

class Warscapes extends FlameGame
    with HasKeyboardHandlerComponents, MouseMovementDetector {
  @override
  bool get debugMode => true;

  late final World world;
  late final CameraComponent currentCamera;
  final soldiers = <Soldier>[];
  final int numberOfPlayers = 2;

  @override
  Future<void> onLoad() async {
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

class WarscapesMap extends Component {
  static final Paint _background = Paint()
    ..color = const Color.fromARGB(255, 82, 83, 84);

  static Rectangle mapShape = Rectangle.fromLTRB(
    kMapSize,
    kMapSize,
    kMapSize,
    kMapSize,
  );

  @override
  void render(Canvas canvas) {
    canvas.drawRect(kMapBounds, _background);
  }
}

class Soldier extends PositionComponent
    with KeyboardHandler, HasGameRef<Warscapes> {
  final int id;
  static const double speed = 300;
  final Vector2 _velocity;

  Soldier(
    this.id, {
    required double radius,
    Paint? paint,
    Vector2? position,
  })  : _velocity = Vector2.zero(),
        _radius = radius,
        _paint = paint ?? Paint()
          ..color = Colors.yellow,
        super(
          priority: 1,
          position: position,
          size: Vector2.all(2 * radius),
          anchor: Anchor.center,
        );

  final double _radius;
  final Paint _paint;

  @override
  void update(double dt) {
    if (id == 0) {
      position.x += _velocity.x * dt;
      position.y += _velocity.y * dt;
      if (position.x <= -kMapSize + _radius) {
        position.x = -kMapSize + _radius;
      }
      if (position.x >= kMapSize - _radius) {
        position.x = kMapSize - _radius;
      }
      if (position.y <= -kMapSize + _radius) {
        position.y = -kMapSize + _radius;
      }
      if (position.y >= kMapSize - _radius) {
        position.y = kMapSize - _radius;
      }
    }
  }

  @override
  void render(Canvas canvas) {
    {
      super.render(canvas);
      canvas.drawCircle(
        Offset(_radius, _radius),
        _radius,
        _paint,
      );
    }
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
}
