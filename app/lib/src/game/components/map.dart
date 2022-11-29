import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:warscapes/src/game/warscapes.dart';

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
    super.render(canvas);
    canvas.drawRect(
        Rect.fromLTRB(
          kMapBounds.left,
          kMapBounds.top,
          kMapBounds.right,
          kMapBounds.bottom,
        ),
        _background);
  }
}
