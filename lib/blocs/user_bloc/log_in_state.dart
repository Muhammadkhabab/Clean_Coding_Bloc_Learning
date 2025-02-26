part of 'log_in_bloc.dart';

class LogInState extends Equatable {
  final String email;
  final String password;
  final bool isPasswordVisible;
  final String message;
  final ApiResponse<String> logInApiResponse;

  const LogInState({
    this.email = '',
    this.password = '',
    this.isPasswordVisible = false,
    this.message = '',
    this.logInApiResponse = ApiResponse.completed(),
  });

  LogInState copyWith({
    final String? email,
    final String? password,
    final bool? isPasswordVisible,
    final String? message,
    final ApiResponse<String>? logInApiResponse,
  }) {
    return LogInState(
      email: email ?? this.email,
      password: password ?? this.password,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      message: message ?? this.message,
      logInApiResponse: logInApiResponse ?? this.logInApiResponse,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [email, password, isPasswordVisible, message, logInApiResponse];
}
