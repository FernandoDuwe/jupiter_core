import "package:flutter/material.dart";
import "package:jupiter_core/jupiter_core.dart";
import "package:jupiter_core/src/widgets/jupiter_app_widget.dart";

class JupiterDrawer extends StatelessWidget {
  const JupiterDrawer({super.key});

  Widget _getHeader(JupiterApp jupiterApp) {
    return DrawerHeader(child: Text(jupiterApp.appTitle));
  }

  List<Widget> _getChildren(BuildContext context) {
    JupiterAppWidget? appWidget = JupiterAppWidget.of(context);

    late JupiterApp jupiterApp;

    if (appWidget != null) {
      jupiterApp = appWidget!.jupiterApp;
    } else {
      jupiterApp = JupiterApp(appTitle: "Aplicação");
    }

    List<Widget> itens = [_getHeader(jupiterApp)];

    for (JupiterRouteModel model in jupiterApp.routes)
      itens.add(JupiterRouteTile(jupiterRouteModel: model));

    return itens;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: _getChildren(context),
      ),
    );
  }
}
