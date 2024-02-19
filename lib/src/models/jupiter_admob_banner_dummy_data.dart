import 'package:flutter/material.dart';

class JupiterAdmobBannerDummyData {
  double height = 0;
  double width = 0;
  Widget? child;

  JupiterAdmobBannerDummyData(this.height, this.width, [this.child]);

  JupiterAdmobBannerDummyData.banner({this.child}) {
    this.height = 50;
    this.width = 320;
  }

  JupiterAdmobBannerDummyData.largeBanner({this.child}) {
    this.height = 100;
    this.width = 320;
  }

  JupiterAdmobBannerDummyData.IABmediumRectangle({this.child}) {
    this.height = 250;
    this.width = 300;
  }

  JupiterAdmobBannerDummyData.IABfullSizeBanner({this.child}) {
    this.height = 60;
    this.width = 486;
  }

  JupiterAdmobBannerDummyData.IABleaderboard({this.child}) {
    this.height = 90;
    this.width = 728;
  }
}
