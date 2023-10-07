import 'dart:io';
import "package:flutter/material.dart";
import "package:google_mobile_ads/google_mobile_ads.dart";

class JupiterAdmobBanner extends StatefulWidget {
  final String bannerId;

  const JupiterAdmobBanner({required this.bannerId, super.key});

  @override
  State<JupiterAdmobBanner> createState() => _JupiterAdmobBannerState();
}

class _JupiterAdmobBannerState extends State<JupiterAdmobBanner> {
  BannerAd? _bannerAd;

  @override
  void initState() {
    super.initState();

    // Loadig banner...
    BannerAd(
      adUnitId: widget.bannerId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('JupiterAdmobBanner: Failed to load banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();
  }

  bool get isMobileDevice => (Platform.isAndroid) || (Platform.isIOS);

  @override
  Widget build(BuildContext context) {
    if ((_bannerAd == null) || (!isMobileDevice))
      return Container(height: 0, width: 0);

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: _bannerAd!.size.width.toDouble(),
        height: _bannerAd!.size.height.toDouble(),
        child: AdWidget(ad: _bannerAd!),
      ),
    );
  }

  @override
  void dispose() {
    _bannerAd?.dispose();

    super.dispose();
  }
}
