import 'package:flutter/material.dart';

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      // ..color = Colors.grey.withOpacity(0.9)
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    double rectangleHeightPercentage = 0.1;
    double rectangleHeight = rectangleHeightPercentage;

    Path path = Path();
    path.moveTo(0, 0); // Start
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - rectangleHeight);
    path.lineTo(0, size.height - rectangleHeight);
    path.close();

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

