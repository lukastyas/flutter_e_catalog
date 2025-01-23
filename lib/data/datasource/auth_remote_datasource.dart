import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_e_catalog/data/datasource/auth_local_datasource.dart';
// import 'package:flutter_e_catalog/data/datasource/auth_local_datasource.dart';

import '../../core/constants/variables.dart';
import '../models/request/login_request_model.dart';
import '../models/responses/auth_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  //function logout
  // Future<Either<String, String>> logout() async {
  //   final authData = await AuthLocalDatasource().getAuthData();
  //   print('Auth data: $authData');

  //   final response = await http.post(
  //     Uri.parse('${Variables.baseUrl}/api/v1/logout'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //       'Authorization': 'Bearer ${authData.data.token}',
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     //delete data otentikasi
  //     await AuthLocalDatasource().removeAuthData();
  //     return const Right('Logut Success');
  //   } else {
  //     return const Left('Logut Failed');
  //   }
  // }

  //Function Login
  Future<Either<String, AuthResponseModel>> login(LoginRequestModel data) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/v1/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: data.toJson(),
    );

    // print request
    log('Login Request: ${data.toJson()}');

    log('Login Res : ${response.body}');

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  //Function Logout
  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/v1/logout'),
      headers: <String, String>{
        'Authorization': 'Bearer ${authData.data.token}',
      },
    );

    if (response.statusCode == 200) {
      return Right(response.body);
    } else {
      return Left(response.body);
    }
  }
}
