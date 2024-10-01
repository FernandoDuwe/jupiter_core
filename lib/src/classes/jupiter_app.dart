import 'package:jupiter_core/src/classes/jupiter_object.dart';
import 'package:jupiter_core/src/models/jupiter_route_model.dart';
import 'package:jupiter_core/src/utils/types.dart';

class JupiterApp extends JupiterObject {
  // Application Title
  String appTitle = "";
  String basePath = "";

  // Application requires logged access
  bool requestLogin = false;

  // Application mode
  JupiterAppType appType = JupiterAppType.production;

  List<JupiterRouteModel> routes = [];

  JupiterApp(
      {required this.appTitle,
      bool? appRequestLogin,
      JupiterAppType? jupiterAppType,
      String? prBasePath,
      List<JupiterRouteModel>? appRoutes}) {
    requestLogin = (appRequestLogin ?? false);
    this.basePath = (prBasePath ?? "");
    appType = (jupiterAppType ?? JupiterAppType.production);
    routes = (appRoutes ?? []);
  }
}
