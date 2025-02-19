import 'package:clean_coding_project/repository/auth_repository/auth_api_repository.dart';
import 'package:clean_coding_project/repository/auth_repository/auth_http_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator{
  void serviceLocator(){
    getIt.registerLazySingleton<AuthApiRepository>(() => AuthHttpRepository());
  }
}