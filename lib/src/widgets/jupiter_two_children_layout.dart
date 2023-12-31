import "package:flutter/material.dart";
import 'package:jupiter_core/src/widgets/jupiter_two_children_horizontal_layout.dart';
import 'package:jupiter_core/src/widgets/jupiter_two_children_vertical_layout.dart';

class JupiterTwoChildrenLayout extends StatelessWidget {
  final Widget firstChild;
  final Widget secondChild;

  const JupiterTwoChildrenLayout(
      {required this.firstChild, required this.secondChild, super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight > constraints.maxWidth)
          return JupiterTwoChildrenHorizontalLayout(
              firstChild: firstChild, secondChild: secondChild);

        return JupiterTwoChildrenVerticalLayout(
          firstChild: firstChild,
          secondChild: secondChild,
        );
      },
    );
  }
}
