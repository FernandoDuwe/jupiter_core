import 'package:flutter/material.dart';

class JupiterTwoLayerLayout extends StatelessWidget {
  final Widget firstLayer;
  final Widget secondLayer;

  const JupiterTwoLayerLayout(
      {super.key, required this.firstLayer, required this.secondLayer});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [this.firstLayer, this.secondLayer],
    );
  }
}
