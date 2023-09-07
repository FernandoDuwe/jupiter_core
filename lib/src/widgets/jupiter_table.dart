import "package:flutter/material.dart";
import "package:jupiter_core/src/widgets/jupiter_table_line.dart";

class JupiterTable extends StatelessWidget {
  final List<JupiterTableLine> lines;

  const JupiterTable({required this.lines, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.lines.length,
      itemBuilder: (context, index) => this.lines[index],
    );
  }
}
