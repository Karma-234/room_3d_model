import 'package:flutter/material.dart';

class GraphPainter extends CustomPainter {
  final int line;
  @override
  const GraphPainter({this.line = 6});
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    double startY = size.width / line;
    for (var i = 0; i <= line; i++) {
      path.moveTo(0, i * startY);
      path.lineTo(size.width, i * startY);
    }

    canvas.drawPath(path, paint);
    for (var i = 0; i <= line; i++) {
      path.moveTo(i * startY, 0);
      path.lineTo(i * startY, size.height);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
