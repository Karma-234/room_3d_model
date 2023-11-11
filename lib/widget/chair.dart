import 'dart:math';

import 'package:flutter/material.dart';
import 'package:render_3d/widget/plank.dart';

import 'chair_legs.dart';

class Chair extends StatelessWidget {
  const Chair({super.key});

  @override
  Widget build(BuildContext context) {
    Offset cubeOffset = Offset.zero;
    return StatefulBuilder(
      builder: (context, setState) {
        return GestureDetector(
          onPanUpdate: (details) => setState(() {
            cubeOffset += details.delta;
          }),
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateX(cubeOffset.dy * pi / 180)
              ..rotateY(cubeOffset.dx * pi / 180),
            child: Stack(
              children: [
                const Plank(),
                Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 50.0, -50.0)
                    ..rotateX(pi / 2),
                  child: const Plank(),
                ),
                Transform(
                  transform: Matrix4.identity()..translate(0.0, 50.0, -50.0),
                  // ..rotateX(pi / 2)
                  child: const ChairLegs(height: 50),
                ),
                Transform(
                  transform: Matrix4.identity()..translate(85.0, 50.0, -50.0),
                  // ..rotateX(pi / 2)
                  child: const ChairLegs(height: 50),
                ),
                Transform(
                  transform: Matrix4.identity()..translate(0.0, 50.0, -15.0),
                  // ..rotateX(pi / 2)
                  child: const ChairLegs(height: 50),
                ),
                Transform(
                  transform: Matrix4.identity()..translate(85.0, 50.0, -15.0),
                  // ..rotateX(pi / 2)
                  child: const ChairLegs(height: 50),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
