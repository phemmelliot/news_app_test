import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:news_app/data/base/remote/endpoints.dart';
import 'package:news_app/data/base/remote/failure.dart';
import 'package:news_app/ui/core/toast_helper/toast_helper.dart';
import 'package:news_app/utils/keys.dart';

class ApiClient {
  ApiClient();

  static Dio getClient() {
    Dio dio = Dio();
    dio.options.baseUrl = Endpoints.baseUrl;
    dio.options.connectTimeout = 30000;
    dio.options.receiveTimeout = 30000;
    dio.options.contentType = 'application/json';

    dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      Map<String, dynamic> map = options.queryParameters;
      map['apiKey'] = newsApiKey;
      options.queryParameters = map;
      print(options.queryParameters);
      print("This is the request ${options.uri.toString()}");
      return options;
    }, onResponse: (Response response) {
      print("This is the result");
      print("This is the response ${response.data}");
      print("This is the response code ${response.statusCode}");

      return response;
    }, onError: (DioError error) {
      print("This is the response code: ${error?.response?.statusCode}");
      print("It is getting to the error handler");
      print(error?.message);
      print(error?.response?.data);
      String errorMessage = "";
      if (error?.response?.data != null) {
        errorMessage = error.response.data["message"];
      } else {
        errorMessage = error.message;
      }

      ToastHelper.showError(
        message: errorMessage ?? "",
        isPersistent: true,
        duration: Duration(seconds: 30),
      );
      throw Failure(errorMessage);
    }));

    return dio;
  }
}
