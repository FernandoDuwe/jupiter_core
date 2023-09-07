import "package:flutter/material.dart";
import "package:jupiter_core/src/delegates/jupiterTwoChildrenHorizontalLayoutDelegate.dart";

class JupiterTwoChildrenHorizontalLayout extends StatelessWidget {
  static const FirstChild = 1;
  static const SecondChild = 2;

  final Widget firstChild;
  final Widget secondChild;

  const JupiterTwoChildrenHorizontalLayout(
      {required this.firstChild, required this.secondChild, super.key});

  @override
  Widget build(BuildContext context) {
    return CustomMultiChildLayout(
      delegate: JupiterTwoChildrenHorizontalLayoutDelegate(),
      children: [
        LayoutId(
          id: JupiterTwoChildrenHorizontalLayout.FirstChild,
          child: this.firstChild,
        ),
        LayoutId(
            id: JupiterTwoChildrenHorizontalLayout.SecondChild,
            child: this.secondChild)
      ],
    );
  }
}
