import 'package:clean_coding_project/utlis/enums.dart';

class ApiResponse<T> {
  final Status status;
  final T? data;
  final String? message;

  const ApiResponse._({required this.status, this.data, this.message});

  ApiResponse.loading() : this._(status: Status.loading);

  ApiResponse.completed(T data) : this._(status: Status.completed, data: data);

  ApiResponse.error(String message) : this._(status: Status.error, message: message);
  
 // ✅ Default instance to prevent errors
  static ApiResponse<String> defaultResponse = ApiResponse.completed('Default Success Response');

  @override
  String toString() {
    return "Status: $status\nMessage: $message\nData: $data";
  }
}
