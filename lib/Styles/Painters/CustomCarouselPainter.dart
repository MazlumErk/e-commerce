import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CustomCarouselPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) async {
    var paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    var strokePaint = Paint()
      ..color = Color.fromARGB(255, 215, 252, 112)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          8,
          0,
          size.width - 8,
          137,
        ),
        const Radius.circular(19.0),
      ),
      strokePaint,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          0,
          8,
          size.width - 8,
          137,
        ),
        const Radius.circular(19.0),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
