import 'package:flutter/material.dart';

class JupiterAdmobBannerDummyData {
  double height = 0;
  double width = 0;
  Widget? child;

  JupiterAdmobBannerDummyData(this.height, this.width, [this.child]);

  JupiterAdmobBannerDummyData.banner() {
    this.height = 50;
    this.width = 320;
  }
}
