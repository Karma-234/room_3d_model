import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';

import 'widget/desktop.dart';
import 'widget/painted_container.dart';
import 'widget/plank.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Offset cubeOffset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cubeRotator(),
              const SizedBox(
                width: 100,
              ),
              const Plank(),
            ],
          ),
        ),
      ),
    );
  }

  Transform cubeRotator() {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateX(cubeOffset.dy * pi / 180)
        ..rotateY(cubeOffset.dx * pi / 180),
      child: GestureDetector(
        onPanUpdate: (details) => setState(() {
          cubeOffset += details.delta;
        }),
        child: Stack(
          children: [
            const PaintedContainer(),
            Transform(
                transform: Matrix4.identity()..rotateY(pi / 2),
                child: const PaintedContainer()),
            Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 300.0)
                  ..rotateX(-pi / 2),
                child: const PaintedContainer()),
            const DeskTop(
              shouldSlide: false,
            ),
            Container(
              transformAlignment: Alignment.center,
              transform: Matrix4.identity()..translate(0.0, 225.0, -300),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.brown[900]!),
                  color: Colors.brown),
              height: 75,
              width: 77,
            ),
            Container(
              height: 50,
              transformAlignment: Alignment.center,
              transform: Matrix4.identity()
                ..translate(
                  125.0,
                  10.0,
                ),
              child: const AnalogClock.dark(),
            ),
            ...List.generate(
              6,
              (i) => DeskTop(
                height: 150,
                width: 35,
                thickness: 2,
                yDistance: (6 - i) * 20,
              ),
            ),
            Container(
              transformAlignment: Alignment.center,
              transform: Matrix4.identity()..translate(0.0, 0.0, -150),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.brown[900]!),
                  color: Colors.brown),
              height: 195,
              width: 35,
            ),
            Container(
              transformAlignment: Alignment.center,
              transform: Matrix4.identity()
                ..translate(0.0, -75.0, -77.0)
                ..rotateX(pi / 2),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.brown[900]!),
                  color: Colors.brown),
              height: 150,
              width: 35,
            ),
            Container(
              transformAlignment: Alignment.center,
              transform: Matrix4.identity()..translate(0.0, 0.0, -77.5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.brown[900]!),
                  color: Colors.brown),
              height: 93,
              width: 35,
            ),
          ],
        ),
      ),
    );
  }
}
