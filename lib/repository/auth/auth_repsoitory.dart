import 'dart:developer';

import 'package:clean_coding_project/config/data/network/base_api_service.dart';
import 'package:clean_coding_project/model/user/user_model.dart';
import 'package:clean_coding_project/utlis/app_urls.dart';
import '../../config/data/network/network_api_services.dart';

//this is the login repository which is the bridge between the base and  the network api we can implment the api here
class AuthRepository {
  final BaseApiServices _baseApiServices = NetworkApiServices();

  Future<UserModel> logInApi(dynamic data) async {
    dynamic response = await _baseApiServices.postApi(AppUrls.loginEndPoinUrl, data);
    log("data repository  ${data.toString()}");

    log("Data Api Reposity" + AppUrls.loginEndPoinUrl);
    return UserModel.fromJson(response);
  }
}
