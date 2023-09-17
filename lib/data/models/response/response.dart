import 'package:ecommerce_app/utils/api_exceptions/exception_handler.dart';

class RepoResponse<T> {
  final APIException? error;
  final T? data;

  RepoResponse({this.error, this.data});

  @override
  String toString() {
    return 'RepoResponse{error: $error, data: $data}';
  }
}
