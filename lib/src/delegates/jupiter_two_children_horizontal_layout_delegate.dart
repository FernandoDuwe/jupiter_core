import "package:flutter/material.dart";
import 'package:jupiter_core/src/widgets/jupiter_two_children_horizontal_layout.dart';

class JupiterTwoChildrenHorizontalLayoutDelegate
    extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    if (hasChild(JupiterTwoChildrenHorizontalLayout.FirstChild)) {
      positionChild(
          JupiterTwoChildrenHorizontalLayout.FirstChild, Offset(0, 0));

      layoutChild(
          JupiterTwoChildrenHorizontalLayout.FirstChild,
          BoxConstraints.tight(Size(
            size.width,
            size.height / 2,
          )));
    }

    if (hasChild(JupiterTwoChildrenHorizontalLayout.SecondChild)) {
      positionChild(JupiterTwoChildrenHorizontalLayout.SecondChild,
          Offset(0, size.height / 2));

      layoutChild(
          JupiterTwoChildrenHorizontalLayout.SecondChild,
          BoxConstraints.tight(Size(
            size.width,
            size.height / 2,
          )));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
