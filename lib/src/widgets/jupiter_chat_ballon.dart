import 'package:flutter/material.dart';
import 'package:jupiter_core/jupiter_core.dart';

class JupiterChatBallon extends StatelessWidget {
  final Color? color;
  final JupiterChatTileMessageType messageType;
  final Widget child;

  const JupiterChatBallon(
      {required this.child, required this.messageType, this.color, super.key});

  BorderRadiusGeometry _getBorderRadius() {
    if (this.messageType == JupiterChatTileMessageType.sender)
      return BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
          topRight: Radius.circular(10));

    return BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        topRight: Radius.circular(10));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.child,
      decoration:
          BoxDecoration(borderRadius: _getBorderRadius(), color: this.color),
    );
  }
}
