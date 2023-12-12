import 'package:flutter/material.dart';
import 'package:jupiter_core/jupiter_core.dart';

class JupiterChatTile extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final JupiterChatTileMessageType messageType;

  const JupiterChatTile(
      {required this.child,
      required this.messageType,
      this.padding,
      super.key});

  AlignmentGeometry _getAligment() {
    if (this.messageType == JupiterChatTileMessageType.sender)
      return Alignment.topRight;

    if (this.messageType == JupiterChatTileMessageType.receiver)
      return Alignment.topLeft;

    return Alignment.center;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: _getAligment(),
      padding: this.padding,
      child: this.child,
    );
  }
}
