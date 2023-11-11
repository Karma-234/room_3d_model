import 'dart:math';

import 'package:flutter/material.dart';

class Plank extends StatelessWidget {
  const Plank({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()..translate(0.0, 0.0, -1.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black), color: Colors.brown),
          height: 50,
          width: 100,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(-(4 / 2).toDouble(), 0.0, -.5)
            ..rotateY(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: 50,
          width: 4,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate((100 - 5).toDouble(), 0.0, -(4 / 2).toDouble())
            ..rotateY(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: 50,
          width: 4,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(0.0, -5.0, -(4 / 2).toDouble())
            ..rotateX(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: 4,
          width: 100,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(0.0, (50 - 5).toDouble(), -(4 / 2).toDouble())
            ..rotateX(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: 4,
          width: 100,
        ),
      ],
    );
  }
}
