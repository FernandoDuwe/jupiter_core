import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jupiter_core/jupiter_core.dart';
import 'package:jupiter_core/src/utils/mathUtils.dart';
import 'package:jupiter_core/src/utils/types.dart';

class JupiterLayoutBuilder extends StatelessWidget {
  final JupiterLayoutBuilderOnBuild onBuild;

  const JupiterLayoutBuilder({required this.onBuild, super.key});

  JupiterScreenSize _getScreenSize(
      BuildContext context, BoxConstraints constraints) {
    if (biggestValueOn([constraints.maxHeight, constraints.maxWidth]) >=
        SCREEN_SIZE_BIG) return JupiterScreenSize.big;

    if (biggestValueOn([constraints.maxHeight, constraints.maxWidth]) >=
        SCREEN_SIZE_MEDIUM) return JupiterScreenSize.medium;

    return JupiterScreenSize.small;
  }

  JupiterPlataform _getCurrentPlataform(BuildContext context) {
    if (Platform.isAndroid) return JupiterPlataform.android;

    if (Platform.isIOS) return JupiterPlataform.ios;

    if (Platform.isLinux) return JupiterPlataform.linux;

    if (Platform.isWindows) return JupiterPlataform.windows;

    return JupiterPlataform.web;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => onBuild(context, constraints,
          _getScreenSize(context, constraints), _getCurrentPlataform(context)),
    );
  }
}
