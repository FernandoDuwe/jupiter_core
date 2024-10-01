import 'package:dio/dio.dart';
import 'package:jupiter_core/src/utils/consts.dart';

class JupiterContext {
  static final JupiterContext _instance = JupiterContext._internal();
  JupiterContext._internal();
  static JupiterContext get instance => _instance;

  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://<your domain>.com',
      // you can keep this blank
      headers: {
        'Authorization': 'Bearer $NO_TOKEN',
      },
    ),
  );

  void updateSession(String prUpdatedToken) {
    dio.options.headers = {
      'Authorization': 'Bearer $prUpdatedToken',
    };
  }

  void updateBasePath(String prBasePath) => dio.options.baseUrl = prBasePath;
}
