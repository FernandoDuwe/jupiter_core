import "package:flutter/material.dart";
import "package:jupiter_core/jupiter_core.dart";

class JupiterRouteTile extends StatelessWidget {
  final JupiterRouteModel jupiterRouteModel;

  const JupiterRouteTile({required this.jupiterRouteModel, super.key});

  @override
  Widget build(BuildContext context) {
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
}
