import 'package:clean_coding_project/model/user/user_model.dart';
import 'package:clean_coding_project/repository/auth_repository/auth_api_repository.dart';

//this is the login repository which is the bridge between the base and  the network api we can implment the api here
class AuthMockRepository implements AuthApiRepository {
  @override
  Future<UserModel> logInApi(dynamic data) async {
    await Future.delayed(Duration(seconds: 2));
    final responseData = {'token': 'fajhdhfhafjdhfahl'};
    return UserModel.fromJson(responseData);
  }
}
