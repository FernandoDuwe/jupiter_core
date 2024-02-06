import "package:flutter/material.dart";
import 'package:jupiter_core/src/delegates/jupiter_two_children_vertical_layout_delegate.dart';
import 'package:jupiter_core/src/models/jupiter_layout_info.dart';

class JupiterTwoChildrenVerticalLayout extends StatelessWidget {
  final JupiterLayoutInfo? layoutInfo;

  static const FirstChild = 1;
  static const SecondChild = 2;

  final Widget firstChild;
  final Widget secondChild;

  const JupiterTwoChildrenVerticalLayout(
      {required this.firstChild,
      required this.secondChild,
      this.layoutInfo,
      super.key});

  @override
  Widget build(BuildContext context) {
    return CustomMultiChildLayout(
      delegate: JupiterTwoChildrenVerticalDelegate(
          layoutInfo: (this.layoutInfo ?? JupiterLayoutInfo.symetric())),
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
