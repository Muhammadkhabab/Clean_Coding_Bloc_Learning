import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:clean_coding_project/config/data/responces/api_responce.dart';
import 'package:clean_coding_project/repository/auth_repository/auth_api_repository.dart';
import 'package:equatable/equatable.dart';

import '../model/user/user_model.dart';
part 'log_in_event.dart';
part 'log_in_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  AuthApiRepository authApiRepository;

  LogInBloc({required this.authApiRepository}) : super(LogInState()) {
    on<EmailChanged>(_onEmailChange);
    on<PasswordChange>(_onPasswordChange);
    on<TogglePasswordVisibility>(_onPasswordVisibility);
    on<LogInApi>(_onSubmitted);
  }

  void _onEmailChange(EmailChanged event, Emitter<LogInState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChange(PasswordChange event, Emitter<LogInState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onPasswordVisibility(TogglePasswordVisibility event, Emitter<LogInState> emit) {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }

  Future<void> _onSubmitted(LogInApi event, Emitter<LogInState> emit) async {
    //   {
    //     "email": "eve.holt@reqres.in",
    //     "password": "cityslicka"
    // }
    Map<String, dynamic> data = {'email': state.email, 'password': state.password};
    emit(state.copyWith(logInApiResponse: ApiResponse.loading()));

    log(data.toString());
    await authApiRepository
        .logInApi(data)
        .then((value) async {
          if (value.error.isNotEmpty) {
            emit(state.copyWith(logInApiResponse: ApiResponse.error(value.error.toString())));
          } else {
            emit(state.copyWith(logInApiResponse: const ApiResponse.completed('LOGIN')));
          }
        })
        .onError((error, stackTrace) {
          emit(state.copyWith(logInApiResponse: ApiResponse.error(error.toString())));
        });
  }
}
