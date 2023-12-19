import 'package:flutter/material.dart';

class JupiterChatInfoCard extends StatelessWidget {
  final Widget child;

  const JupiterChatInfoCard({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: this.child,
    );
  }
}
