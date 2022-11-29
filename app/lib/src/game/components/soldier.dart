import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Soldier extends PositionComponent {
  late final String id;
  final double radius = 20.0;
  final Paint paint = Paint()..color = Colors.yellow;
  Soldier()
      : super(
          priority: 1,
          size: Vector2.all(2 * 20.0),
          anchor: Anchor.center,
        );

  @override
  void render(Canvas canvas) {
    {
      super.render(canvas);
      canvas.drawCircle(
        Offset(radius, radius),
        radius,
        paint,
      );
    }
  }
}
