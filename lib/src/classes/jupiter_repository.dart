import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:jupiter_core/src/classes/jupiter_model.dart';
import 'package:jupiter_core/src/classes/jupiter_object.dart';
import 'package:jupiter_core/src/utils/types.dart';

class JupiterRepository extends JupiterObject {
  static Future<JupiterModel?> get(
      String prEntryPoint, JupiterJson? prQueryParams) async {
    final dio = Dio();

    Response response =
        await dio.get(prEntryPoint, queryParameters: prQueryParams);

    dynamic vrReturnData = jsonDecode(response.data.toString());

    return JupiterModel.asFieldList(vrReturnData as JupiterJson);
  }

  static Future<List<JupiterModel>> getMany(
      String prEntryPoint, JupiterJson? prQueryParams) async {
    final dio = Dio();

    Response response =
        await dio.get(prEntryPoint, queryParameters: prQueryParams);

    dynamic vrReturnData = jsonDecode(response.data.toString());

    List<JupiterModel> vrList = [];

    (vrReturnData as List<JupiterJson>)
        .forEach((element) => vrList.add(JupiterModel.asFieldList(element)));

    return vrList;
  }
}
