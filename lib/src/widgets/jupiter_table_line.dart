import "package:flutter/material.dart";
import "package:jupiter_core/src/widgets/jupiter_table_line_item.dart";

class JupiterTableLine extends StatelessWidget {
  final List<JupiterTableLineItem> itens;
  const JupiterTableLine({required this.itens, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: itens,
      ),
    );
  }
}
