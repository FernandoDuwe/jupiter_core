import "package:flutter/material.dart";
import 'package:jupiter_core/src/delegates/jupiter_two_children_horizontal_layout_delegate.dart';
import 'package:jupiter_core/src/models/jupiter_layout_info.dart';

class JupiterTwoChildrenHorizontalLayout extends StatelessWidget {
  static const FirstChild = 1;
  static const SecondChild = 2;

  final Widget firstChild;
  final Widget secondChild;

  final JupiterLayoutInfo? layoutInfo;

  const JupiterTwoChildrenHorizontalLayout(
      {required this.firstChild,
      required this.secondChild,
      this.layoutInfo,
      super.key});

  @override
  Widget build(BuildContext context) {
    return CustomMultiChildLayout(
      delegate: JupiterTwoChildrenHorizontalLayoutDelegate(
          layoutInfo: (this.layoutInfo ?? JupiterLayoutInfo.symetric())),
      children: [
        LayoutId(
          id: JupiterTwoChildrenHorizontalLayout.FirstChild,
          child: firstChild,
        ),
        LayoutId(
            id: JupiterTwoChildrenHorizontalLayout.SecondChild,
            child: secondChild)
      ],
    );
  }
}
