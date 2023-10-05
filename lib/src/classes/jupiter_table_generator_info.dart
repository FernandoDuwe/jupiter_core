import 'package:flutter/material.dart';
import 'package:jupiter_core/src/classes/jupiter_object.dart';

class JupiterTableGeneratorInfo extends JupiterObject {
  final int line;
  final int flexVlaue;
  final Key componentKey;

  JupiterTableGeneratorInfo(
      {this.line = 1, this.flexVlaue = 1, required this.componentKey});
}
