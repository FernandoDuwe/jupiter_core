import "package:flutter/material.dart";
import 'package:jupiter_core/src/delegates/jupiter_two_children_vertical_layout_delegate.dart';

class JupiterTwoChildrenVerticalLayout extends StatelessWidget {
  static const FirstChild = 1;
  static const SecondChild = 2;

  final Widget firstChild;
  final Widget secondChild;

  const JupiterTwoChildrenVerticalLayout(
      {required this.firstChild, required this.secondChild, super.key});

  @override
  Widget build(BuildContext context) {
    return CustomMultiChildLayout(
      delegate: JupiterTwoChildrenVerticalDelegate(),
      children: [
        LayoutId(
          id: JupiterTwoChildrenVerticalLayout.FirstChild,
          child: firstChild,
        ),
        LayoutId(
            id: JupiterTwoChildrenVerticalLayout.SecondChild,
            child: secondChild)
      ],
    );
  }
}
