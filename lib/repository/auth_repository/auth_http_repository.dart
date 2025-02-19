import 'dart:developer';

import 'package:clean_coding_project/config/data/network/base_api_service.dart';
import 'package:clean_coding_project/model/user/user_model.dart';
import 'package:clean_coding_project/repository/auth_repository/auth_api_repository.dart';
import 'package:clean_coding_project/utlis/app_urls.dart';
import '../../config/data/network/network_api_services.dart';

/// Implementation of [AuthApiRepository] for making HTTP requests to the authentication API.
class AuthHttpRepository implements AuthApiRepository {
  final BaseApiServices _baseApiServices = NetworkApiServices();

  @override
  Future<UserModel> logInApi(dynamic data) async {
    dynamic response = await _baseApiServices.postApi(AppUrls.loginEndPoinUrl, data);
    log("data repository  ${data.toString()}");

    log("Data Api Reposity" + AppUrls.loginEndPoinUrl);
    return UserModel.fromJson(response);
  }
}
