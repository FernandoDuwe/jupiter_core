import "package:flutter/material.dart";
import 'package:jupiter_core/src/models/jupiter_layout_info.dart';
import 'package:jupiter_core/src/widgets/jupiter_two_children_horizontal_layout.dart';

class JupiterTwoChildrenHorizontalLayoutDelegate
    extends MultiChildLayoutDelegate {
  final JupiterLayoutInfo layoutInfo;

  JupiterTwoChildrenHorizontalLayoutDelegate({required this.layoutInfo});

  @override
  void performLayout(Size size) {
    if (hasChild(JupiterTwoChildrenHorizontalLayout.FirstChild)) {
      positionChild(
          JupiterTwoChildrenHorizontalLayout.FirstChild, Offset(0, 0));

      layoutChild(
          JupiterTwoChildrenHorizontalLayout.FirstChild,
          BoxConstraints.tight(Size(
            size.width,
            this.layoutInfo.firstPanelSizeFrom(size.height),
          )));
    }

    if (hasChild(JupiterTwoChildrenHorizontalLayout.SecondChild)) {
      positionChild(JupiterTwoChildrenHorizontalLayout.SecondChild,
          Offset(0, this.layoutInfo.firstPanelSizeFrom(size.height)));

      layoutChild(
          JupiterTwoChildrenHorizontalLayout.SecondChild,
          BoxConstraints.tight(Size(
            size.width,
            this.layoutInfo.secondPanelSizeFrom(size.height),
          )));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
