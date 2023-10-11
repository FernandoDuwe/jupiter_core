import 'package:flutter/material.dart';
import 'package:jupiter_core/src/classes/jupiter_model.dart';

class JupiterRouteModel extends JupiterModel {
  String title = "";
  String description = "";
  String? route;
  Icon? icon;
  VoidCallback? onClick;
  List<JupiterRouteModel>? children;

  bool get hasRoute => route != null;

  bool get hasIcon => icon != null;

  bool get hasClick => onClick != null;

  bool get hasChildren => ((children != null) && (children!.isNotEmpty));

  JupiterRouteModel(
      {required this.title,
      required this.description,
      this.route,
      this.icon,
      this.onClick,
      this.children});
}
