import '../../models/user/user_model.dart';

//this is the login repository which is the bridge between the base and  the network api we can implment the api here
abstract class AuthApiRepository {
  Future<UserModel> logInApi(dynamic data);
}
