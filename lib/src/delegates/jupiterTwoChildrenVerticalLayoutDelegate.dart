import "package:flutter/material.dart";
import "package:jupiter_core/src/widgets/jupiterTwoChildrenVerticalLayout.dart";

class JupiterTwoChildrenVerticalDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    if (hasChild(JupiterTwoChildrenVerticalLayout.FirstChild)) {
      positionChild(JupiterTwoChildrenVerticalLayout.FirstChild, Offset(0, 0));

      layoutChild(
          JupiterTwoChildrenVerticalLayout.FirstChild,
          BoxConstraints.tight(Size(
            size.width / 2,
            size.height,
          )));
    }

    if (hasChild(JupiterTwoChildrenVerticalLayout.SecondChild)) {
      positionChild(JupiterTwoChildrenVerticalLayout.SecondChild,
          Offset(size.width / 2, 0));

      layoutChild(
          JupiterTwoChildrenVerticalLayout.SecondChild,
          BoxConstraints.tight(Size(
            size.width / 2,
            size.height,
          )));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
