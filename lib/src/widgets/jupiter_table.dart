import "package:flutter/material.dart";
import "package:jupiter_core/src/classes/jupiter_table_generator_info.dart";
import "package:jupiter_core/src/widgets/jupiter_table_line.dart";

class JupiterTable extends StatelessWidget {
  late List<JupiterTableLine> lines;

  JupiterTable({required this.lines, super.key});

  JupiterTable.generator(
      {required List<JupiterTableGeneratorInfo> infoList, super.key}) {
    lines = [];

    bool hasFields = true;
    int lineCounter = 1;

    while (hasFields) {
      hasFields = false;

      for (int i = 0; i < infoList.length; i++) lineCounter++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.lines.length,
      itemBuilder: (context, index) => this.lines[index],
    );
  }
}
