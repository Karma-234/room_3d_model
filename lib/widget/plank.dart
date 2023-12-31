import 'dart:math';

import 'package:flutter/material.dart';

class Plank extends StatelessWidget {
  const Plank({
    super.key,
    this.width = 100,
    this.height = 50,
    this.thickness = 4,
  });
  final double width;
  final double height;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()..translate(0.0, 0.0, -1.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black), color: Colors.brown),
          height: height,
          width: width,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(-(thickness / 2).toDouble(), 0.0, -.5)
            ..rotateY(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: height,
          width: thickness,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(
                (width - 5).toDouble(), 0.0, -(thickness / 2).toDouble())
            ..rotateY(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: height,
          width: thickness,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(0.0, -5.0, -(thickness / 2).toDouble())
            ..rotateX(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: thickness,
          width: width,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(
                0.0, (height - 5).toDouble(), -(thickness / 2).toDouble())
            ..rotateX(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: thickness,
          width: width,
        ),
      ],
    );
  }
}
