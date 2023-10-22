import "package:flutter/material.dart";
import "package:jupiter_core/jupiter_core.dart";

class JupiterRouteTile extends StatelessWidget {
  final JupiterRouteModel jupiterRouteModel;

  const JupiterRouteTile({required this.jupiterRouteModel, super.key});

  Widget _getRouteWithNoChildren(BuildContext context) {
    return ListTile(
      leading: jupiterRouteModel.icon,
      title: Text(jupiterRouteModel.title),
      subtitle: Text(jupiterRouteModel.description),
      onTap: () {
        if (jupiterRouteModel.hasClick) {
          jupiterRouteModel.onClick!();

          return;
        }

        if (jupiterRouteModel.hasRoute)
          Navigator.of(context).pushNamed(jupiterRouteModel.route!);
      },
    );
  }

  Widget _getRouteWithChildren(BuildContext context) {
    return ExpansionTile(
      leading: jupiterRouteModel.icon,
      title: Text(jupiterRouteModel.title),
      subtitle: Text(jupiterRouteModel.description),
      children: jupiterRouteModel.children!
          .map((e) => JupiterRouteTile(
                jupiterRouteModel: e,
              ))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!this.jupiterRouteModel.hasChildren)
      return _getRouteWithNoChildren(context);

    return _getRouteWithChildren(context);
  }
}
