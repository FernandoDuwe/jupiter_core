import "package:flutter/material.dart";
import "package:jupiter_core/jupiter_core.dart";
import "package:jupiter_core/src/widgets/jupiter_app_widget.dart";

class JupiterDrawer extends StatelessWidget {
  const JupiterDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    JupiterAppWidget? appWidget = JupiterAppWidget.of(context);

    JupiterApp? app;

    if (appWidget != null) app = appWidget!.jupiterApp;

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text(app != null ? app!.appTitle : "Aplicação")),
        ],
      ),
    );
  }
}
