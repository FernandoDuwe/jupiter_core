import 'package:jupiter_core/jupiter_core.dart';
import 'package:jupiter_core/src/classes/jupiter_object.dart';

class JupiterModel extends JupiterObject {
  JupiterJson? fields;

  JupiterModel();

  JupiterModel.asFieldList(JupiterJson json) {
    this.fields = json;
  }

  JupiterJson toJson() => this.fields ?? {};

  bool fieldExists(String prFieldName) =>
      this.toJson().containsKey(prFieldName);

  dynamic fieldByName(String prFieldName) => this.toJson()[prFieldName];
}
