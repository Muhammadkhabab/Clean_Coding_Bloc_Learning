part of 'log_in_bloc.dart';

class LogInStates extends Equatable {
  final String email;
  final String password;
  final bool isPasswordVisible;
  final String message;
  final ApiResponse<String> logInApiResponse;

  LogInStates({
    this.email = '',
    this.password = '',
    this.isPasswordVisible = false,
    this.message = '',
    ApiResponse<String>? logInApiResponse, // Make it nullable
  }) : logInApiResponse = logInApiResponse ?? ApiResponse.defaultResponse; // ✅ Initialize in constructor body

  LogInStates copyWith({
    final String? email,
    final String? password,
    final bool? isPasswordVisible,
    final String? message,
    final ApiResponse<String>? logInApiResponse,
  }) {
    return LogInStates(
      email: email ?? this.email,
      password: password ?? this.password,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      message: message ?? this.message,
      logInApiResponse: logInApiResponse ?? this.logInApiResponse,
    );
  }

  @override
  List<Object?> get props => [email, password, isPasswordVisible, message, logInApiResponse];
}
