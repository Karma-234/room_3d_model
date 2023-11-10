import 'dart:math';

import 'package:flutter/material.dart';

class DeskTop extends StatefulWidget {
  const DeskTop({
    super.key,
    this.width = 75,
    this.height = 300,
    this.thickness = 3,
    this.yDistance = 80.0,
    this.shouldSlide = true,
  });
  final double width;
  final double height;
  final double thickness;
  final double yDistance;
  final bool shouldSlide;

  @override
  State<DeskTop> createState() => _DeskTopState();
}

class _DeskTopState extends State<DeskTop> {
  double xDistance = 0.0;

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        // ..setEntry(3, 2, 0.001)
        ..translate(
            xDistance, widget.yDistance, -(widget.height / 2).toDouble())
        ..rotateX(pi / 2)
        ..rotateY(pi),
      child: Stack(
        children: [
          Container(
            transformAlignment: Alignment.center,
            transform: Matrix4.identity()..translate(0.0, 0.0, -1.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black), color: Colors.brown),
            height: widget.height,
            width: widget.width,
          ),
          Container(
            transformAlignment: Alignment.center,
            transform: Matrix4.identity()
              ..translate(-(widget.thickness / 2).toDouble(), 0.0, -.5)
              ..rotateY(pi / 2),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.brown[900]!),
                color: Colors.brown),
            height: widget.height,
            width: widget.thickness,
          ),
          Container(
            transformAlignment: Alignment.center,
            transform: Matrix4.identity()
              ..translate((widget.width - 5).toDouble(), 0.0,
                  -(widget.thickness / 2).toDouble())
              ..rotateY(pi / 2),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.brown[900]!),
                color: Colors.brown),
            height: widget.height,
            width: widget.thickness,
          ),
          Container(
            transformAlignment: Alignment.center,
            transform: Matrix4.identity()
              ..translate(0.0, -5.0, -(widget.thickness / 2).toDouble())
              ..rotateX(pi / 2),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.brown[900]!),
                color: Colors.brown),
            height: widget.thickness,
            width: widget.width,
          ),
          Container(
            transformAlignment: Alignment.center,
            transform: Matrix4.identity()
              ..translate(0.0, (widget.height - 5).toDouble(),
                  -(widget.thickness / 2).toDouble())
              ..rotateX(pi / 2),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.brown[900]!),
                color: Colors.brown),
            height: widget.thickness,
            width: widget.width,
          ),
        ],
      ),
    );
  }
}
