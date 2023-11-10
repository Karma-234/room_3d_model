import 'package:flutter/material.dart';

import 'graph_painter.dart';

class PaintedContainer extends StatelessWidget {
  const PaintedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black), color: Colors.grey),
    );
  }
}
