import 'package:dio/dio.dart';
import 'package:ecommerce_app/data/models/response/error_response.dart';
import 'package:ecommerce_app/data/values/error_messages.dart';
import 'package:flutter/material.dart';

class APIException implements Exception {
  final String message;

  APIException({required this.message});
}

class ExceptionHandler {
  ExceptionHandler._privateConstructor();

  static APIException handleError(Exception error) {
    if (error is DioError) {
      switch (error.type) {
        case DioErrorType.sendTimeout:
          return APIException(message: ErrorMessages.noInternet);
        case DioErrorType.connectTimeout:
          return APIException(message: ErrorMessages.connectionTimeout);
        case DioErrorType.response:
          return APIException(
              message: ErrorResponse.fromJson(error.response?.data).message);
        default:
          return APIException(message: ErrorMessages.networkGeneral);
      }
    } else {
      return APIException(message: ErrorMessages.networkGeneral);
    }
  }
}

class HandleError {
  HandleError._privateConstructor();

  static handleError(APIException? error, BuildContext context) {
    // Get.rawSnackbar(message: error?.message ?? ErrorMessages.networkGeneral);
  }
}
