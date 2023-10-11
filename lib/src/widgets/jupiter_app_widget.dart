import 'package:flutter/material.dart';
import 'package:jupiter_core/jupiter_core.dart';

class JupiterAppWidget extends InheritedWidget {
  JupiterApp jupiterApp;

  JupiterAppWidget({required this.jupiterApp, required super.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static JupiterAppWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }
}
