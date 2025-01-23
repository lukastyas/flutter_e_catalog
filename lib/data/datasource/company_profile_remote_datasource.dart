import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_e_catalog/data/datasource/auth_local_datasource.dart';
import 'package:flutter_e_catalog/data/models/responses/company_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

import '../../core/constants/variables.dart';

class CompanyProfileRemoteDatasource {
  Future<Either<String, CompanyResponseModel>> getCompanyProfile() async {
    try {
      final authData = await AuthLocalDatasource().getAuthData();
      final response = await http.get(
        Uri.parse('${Variables.baseUrl}/api/v1/company'),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authData.data.token}',
        },
      );

      log('Get Company Response: ${response.body}');

      if (response.statusCode == 200) {
        return Right(CompanyResponseModel.fromJson(response.body));
      } else {
        // Return a more descriptive error message
        return left('Error: ${response.statusCode} - ${response.body}');
      }
    } catch (e) {
      // Handle any exceptions that occur during the request
      return left('An error occurred: $e');
    }
  }

  downloadFile(var filePath, var documentUrl) async {
    try {
      /// setting filename
      final filename = filePath;
      String dir = (await getApplicationDocumentsDirectory()).path;
      if (await File('$dir/$filename').exists()) return File('$dir/$filename');

      String url = documentUrl;

      /// requesting http to get url
      var request = await HttpClient().getUrl(Uri.parse(url));

      /// closing request and getting response
      var response = await request.close();

      /// getting response data in bytes
      var bytes = await consolidateHttpClientResponseBytes(response);

      /// generating a local system file with name as 'filename' and path as '$dir/$filename'
      File file = new File('$dir/$filename');
      print('file don = $file');

      /// writing bytes data of response in the file.
      await file.writeAsBytes(bytes);

      return file;
    } catch (err) {
      print(err);
    }
  }
}
// class CompanyProfileRemoteDatasource {
//   Future<Either<String, List<CompanyResponseModel>>> getCompanyProfile() async {
//     final authData = await AuthLocalDatasource().getAuthData();
//     final response = await http.get(
//       Uri.parse('${Variables.baseUrl}/api/v1/company'),
//       headers: {
//         'Accept': 'application/json',
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer ${authData.data.token}',
//       },
//     );

//     if (response.statusCode == 200) {
//       // Decode the response body
//       final List<dynamic> jsonResponse = json.decode(response.body);
//       // Map the JSON response to a list of CompanyResponseModel
//       final List<CompanyResponseModel> companies = jsonResponse
//           .map((json) => CompanyResponseModel.fromMap(json))
//           .toList();
//       return right(companies);
//     } else {
//       return left(response.body);
//     }
//   }

// Future<Either<String, List<CompanyResponseModel>>> searchCompanyByName(
//     String companyName) async {
//   final authData = await AuthLocalDatasource().getAuthData();
//   final response = await http.get(
//     Uri.parse('${Variables.baseUrl}/api/v1/company/search/$companyName'),
//     headers: {
//       'Accept': 'application/json',
//       'Content-Type': 'application/json',
//       'Authorization': 'Bearer ${authData.data.token}',
//     },
//   );

//   if (response.statusCode == 200) {
//     // Decode the response body
//     final List<dynamic> jsonResponse = json.decode(response.body);
//     // Map the JSON response to a list of CompanyResponseModel
//     final List<CompanyResponseModel> companies = jsonResponse
//         .map((json) => CompanyResponseModel.fromMap(json))
//         .toList();
//     return right(companies);
//   } else {
//     return left(response.body);
//   }
// }
// }

// class CompanyProfileRemoteDatasource {
//   Future<Either<String, List<CompanyResponseModel>>> getCompanyProfile() async {
//     final response =
//         await http.get(Uri.parse('${Variables.baseUrl}/api/v1/company'));

//     if (response.statusCode == 200) {
//       final List<dynamic> jsonData = json.decode(response.body);
//       final List<CompanyResponseModel> profiles =
//           jsonData.map((json) => CompanyResponseModel.fromMap(json)).toList();
//       return Right(profiles);
//     } else {
//       return const Left('Failed to load company profile');
//     }
//   }
// }
