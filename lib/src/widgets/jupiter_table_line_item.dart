import "package:flutter/material.dart";

class JupiterTableLineItem extends StatelessWidget {
  final Widget child;
  final int flexValue;

  const JupiterTableLineItem(
      {required this.child, this.flexValue = 1, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(fit: FlexFit.tight, flex: flexValue, child: child);
  }
}
