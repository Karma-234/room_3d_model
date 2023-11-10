import 'dart:math';

import 'package:flutter/material.dart';

class Cube extends StatefulWidget {
  const Cube({
    super.key,
  });

  @override
  State<Cube> createState() => _CubeState();
}

class _CubeState extends State<Cube> {
  Offset cubeOffset = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateX(cubeOffset.dy * pi / 180)
          ..rotateY(cubeOffset.dx * pi / 180),
        child: GestureDetector(
          onPanUpdate: (details) => setState(() {
            cubeOffset += details.delta;
          }),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.red,
                transformAlignment: Alignment.center,
                child: const FlutterLogo(
                  size: 200,
                ),
              ),
              Container(
                color: Colors.blue,
                transformAlignment: Alignment.center,
                transform: Matrix4.identity()
                  ..translate(100.0, 0.0, -100.0)
                  ..rotateY(pi / 2),
                child: const FlutterLogo(
                  size: 200,
                ),
              ),
              Container(
                color: Colors.green,
                transformAlignment: Alignment.center,
                transform: Matrix4.identity()
                  ..translate(0.0, 100.0, -100.0)
                  ..rotateX(-pi / 2),
                child: const FlutterLogo(
                  size: 200,
                ),
              ),
              Container(
                color: Colors.black,
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0, 0.0)
                  ..rotateX(-pi / 2),
                child: const FlutterLogo(
                  size: 200,
                ),
              ),
              Container(
                color: Colors.grey,
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0, 0.0)
                  ..rotateY(pi / 2),
                child: const FlutterLogo(
                  size: 200,
                ),
              ),
              Container(
                color: Colors.orangeAccent,
                transform: Matrix4.identity()..translate(0.0, 0.0, -100.0),
                child: const FlutterLogo(
                  size: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
