import "package:flutter/material.dart";
import 'package:jupiter_core/src/models/jupiter_layout_info.dart';
import 'package:jupiter_core/src/widgets/jupiter_two_children_vertical_layout.dart';

class JupiterTwoChildrenVerticalDelegate extends MultiChildLayoutDelegate {
  final JupiterLayoutInfo layoutInfo;

  JupiterTwoChildrenVerticalDelegate({required this.layoutInfo});

  @override
  void performLayout(Size size) {
    if (hasChild(JupiterTwoChildrenVerticalLayout.FirstChild)) {
      positionChild(JupiterTwoChildrenVerticalLayout.FirstChild, Offset(0, 0));

      layoutChild(
          JupiterTwoChildrenVerticalLayout.FirstChild,
          BoxConstraints.tight(Size(
            this.layoutInfo.firstPanelSizeFrom(size.width),
            size.height,
          )));
    }

    if (hasChild(JupiterTwoChildrenVerticalLayout.SecondChild)) {
      positionChild(JupiterTwoChildrenVerticalLayout.SecondChild,
          Offset(this.layoutInfo.firstPanelSizeFrom(size.width), 0));

      layoutChild(
          JupiterTwoChildrenVerticalLayout.SecondChild,
          BoxConstraints.tight(Size(
            this.layoutInfo.secondPanelSizeFrom(size.width),
            size.height,
          )));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
