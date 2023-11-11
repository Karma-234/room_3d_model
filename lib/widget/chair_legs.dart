import 'dart:math';

import 'package:flutter/material.dart';

class ChairLegs extends StatelessWidget {
  final double height;
  final double width;
  const ChairLegs({
    super.key,
    this.height = 100,
    this.width = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: height,
          width: width,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(0.0, -(width / 2).toDouble(), (width / 2).toDouble())
            ..rotateX(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: width,
          width: width,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(0.0, (height * 0.8).toDouble(), (width / 2).toDouble())
            ..rotateX(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.black),
          height: width,
          width: width,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()..translate(0.0, 0.0, width.toDouble()),
          // ..rotateX(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: height,
          width: width,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(-(width / 2).toDouble(), 0.0, (width / 2).toDouble())
            ..rotateY(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: height,
          width: width,
        ),
        Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate((width / 2).toDouble(), 0.0, (width / 2).toDouble())
            ..rotateY(pi / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[900]!),
              color: Colors.brown),
          height: height,
          width: width,
        ),
      ],
    );
  }
}
