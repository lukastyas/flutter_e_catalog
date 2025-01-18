import 'package:shared_preferences/shared_preferences.dart';

import '../models/responses/auth_response_model.dart';

class AuthLocalDatasource {
  Future<void> saveAuthData(AuthResponseModel authResponseModel) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString('auth_data', authResponseModel.toJson());
    print('Auth data save: ${authResponseModel.toJson()}');
  }

  Future<void> removeAuthData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove('auth_data');
    print('Auth data removed');
  }

  Future<AuthResponseModel> getAuthData() async {
    final pref = await SharedPreferences.getInstance();
    final authData = pref.getString('auth_data');
    return AuthResponseModel.fromJson(authData!);
  }

  Future<bool> isAuth() async {
    final pref = await SharedPreferences.getInstance();
    final authData = pref.getString('auth_data');

    return authData != null;
  }
}
