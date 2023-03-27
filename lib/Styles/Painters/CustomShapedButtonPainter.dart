import 'package:flutter/material.dart';

class CustomShapedButton extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    var paintt = Paint()
      ..color = Color.fromARGB(255, 215, 252, 112)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(size.width * 0.5, -50)
      ..lineTo(size.width, size.height * 1)
      ..lineTo(0, size.height);

    var strokePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
      
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(
              size.width / 2 - 10 - 15 - 62,
              10,
              size.width + 10,
              10 * 10,
            ),
            const Radius.circular(15.0)),
        paintt);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(
            size.width / 2 - 10 - 15 - 70,
            0,
            size.width + 10,
            100,
          ),
          const Radius.circular(15.0),
        ),
        paint);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(
              size.width / 2 - 10 - 15 - 70,
              0,
              size.width + 10,
              100,
            ),
            const Radius.circular(19.0)),
        strokePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
