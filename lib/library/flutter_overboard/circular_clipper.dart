import 'package:flutter/material.dart';

class CircularClipper extends CustomClipper<Rect> {
  final Offset? center;
  final double fraction;

  CircularClipper(this.fraction, [this.center]);
  @override
  Rect getClip(Size size) {
    Rect rect = Rect.fromCircle(
        center: center ?? Offset(size.width / 4, size.height / 4),
        radius: size.height * fraction);
    return rect;
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
