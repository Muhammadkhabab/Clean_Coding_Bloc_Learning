import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:clean_coding_project/config/data/responces/api_responce.dart';
import 'package:clean_coding_project/repository/auth_repository/auth_api_repository.dart';
import 'package:clean_coding_project/services/session_manager/session_controller.dart';
import 'package:equatable/equatable.dart';

part 'log_in_event.dart';
part 'log_in_states.dart';

class LogInBloc extends Bloc<LogInEvent, LogInStates> {
  AuthApiRepository authApiRepository;

  LogInBloc({required this.authApiRepository}) : super(LogInStates()) {
    on<EmailChanged>(_onEmailChange);
    on<PasswordChange>(_onPasswordChange);
    on<TogglePasswordVisibility>(_onPasswordVisibility);
    on<LogInApi>(_onSubmitted);
  }

  void _onEmailChange(EmailChanged event, Emitter<LogInStates> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChange(PasswordChange event, Emitter<LogInStates> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onPasswordVisibility(
    TogglePasswordVisibility event,
    Emitter<LogInStates> emit,
  ) {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }

  Future<void> _onSubmitted(LogInApi event, Emitter<LogInStates> emit) async {
    //   {
    //     "email": "eve.holt@reqres.in",
    //     "password": "cityslicka"
    // }
    Map<String, dynamic> data = {
      'email': state.email,
      'password': state.password,
    };
    emit(state.copyWith(logInApiResponse: ApiResponse.loading()));

    log(data.toString());
    await authApiRepository
        .logInApi(data)
        .then((value) async {
          if (value.error.isNotEmpty) {
            emit(
              state.copyWith(
                logInApiResponse: ApiResponse.error(value.error.toString()),
              ),
            );
          } else {
            await SessionController().saveUserPreference(value);
            await SessionController().getUserFromPreference();
            
            emit(
              state.copyWith(
                logInApiResponse: ApiResponse.completed('LOGIN'),
              ),
            );
          }
        })
        .onError((error, stackTrace) {
          emit(
            state.copyWith(
              logInApiResponse: ApiResponse.error(error.toString()),
            ),
          );
        });
  }
}
