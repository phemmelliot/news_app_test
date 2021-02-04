import 'package:dio/dio.dart';

class NetworkErrorHandler {
  static String handleError(DioError error) {
    String errorDescription = "";
    switch (error.type) {
      case DioErrorType.CANCEL:
        errorDescription = "Request to server was cancelled, please try again";
        break;
      case DioErrorType.CONNECT_TIMEOUT:
        errorDescription = "Connection timeout with server, please try again";
        break;
      case DioErrorType.SEND_TIMEOUT:
        errorDescription = "Connection timeout with server, please try again";
        break;
      case DioErrorType.DEFAULT:
        errorDescription = "Connection to API server failed due to internet connection";
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        errorDescription = "Receive timeout in connection with API server";
        break;
      default:
        errorDescription = "Unexpected error encountered, please try again";
    }
    return errorDescription;
  }
}
