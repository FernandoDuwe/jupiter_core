import 'package:dio/dio.dart';
import 'package:jupiter_core/src/classes/jupiter_context.dart';
import 'package:jupiter_core/src/classes/jupiter_model.dart';
import 'package:jupiter_core/src/classes/jupiter_object.dart';
import 'package:jupiter_core/src/utils/types.dart';

class JupiterRepository extends JupiterObject {
  static Future<JupiterModel?> get(String prEntryPoint,
      {Options? prOptions, JupiterJson? prQueryParams}) async {
    Response response = await JupiterContext.instance.dio
        .get(prEntryPoint, queryParameters: prQueryParams, options: prOptions);

    return JupiterModel.fromJson(response.data as JupiterJson);
  }

  static Future<List<JupiterModel>> getMany(String prEntryPoint,
      {Options? prOptions, JupiterJson? prQueryParams}) async {
    Response response = await JupiterContext.instance.dio
        .get(prEntryPoint, queryParameters: prQueryParams, options: prOptions);

    List<JupiterModel> vrList = [];

    (response.data as List<dynamic>).forEach(
        (element) => vrList.add(JupiterModel.fromJson(element as JupiterJson)));

    return vrList;
  }
}
