
import 'package:dio/dio.dart';

import '../data/model/error_response_model.dart';

class Constants {

  ///SharePreferences///
  static String token = 'token';

  static ErrorResponseModel errorHandler(err) {
    if (err is DioException) {
      if (err.response != null) {
        // Error response received
        print("code ${err.response!.statusCode}");
        print("mmme ${err.response!.statusMessage}");
        if(err.response!.statusCode == 302 || err.response!.statusCode == 401) {
          print("auto logout");
        }
        var errorResponse = ErrorResponseModel.fromJson(err.response!.data);
        print("errorResponse ${errorResponse.message}");
        return errorResponse;
      } else {
        // No response received (connection timeout, network error, etc.)
        var error =
        ErrorResponseModel(status: "Error", message: ["Connection error"]);
        return error;
      }
    } else {
      print("else $err");
      var error = ErrorResponseModel(
          status: "Error", message: ["Internal Server Errors"]);
      print("errorResponse ${error.message}");
      return error;
    }
  }
}