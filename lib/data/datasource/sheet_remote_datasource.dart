import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_e_catalog/data/datasource/auth_local_datasource.dart';
import 'package:flutter_e_catalog/data/models/responses/sheet_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import '../../core/constants/variables.dart';

class SheetRemoteDatasource {
  Future<Either<String, List<SheetResponseModel>>> getSheets() async {
    try {
      final authData = await AuthLocalDatasource().getAuthData();
      final response = await http.get(
        Uri.parse('${Variables.baseUrl}/api/v1/sheet'),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authData.data.token}',
        },
      );

      if (response.statusCode == 200) {
        // Decode response body
        final List<dynamic> jsonResponse = json.decode(response.body);
        // Map the json to list of SheetResponseModel
        final List<SheetResponseModel> sheets = jsonResponse
            .map((json) => SheetResponseModel.fromMap(
                json)) // Pastikan menggunakan fromMap
            .toList();

        return right(sheets);
      } else {
        // Return a more descriptive error message
        return left('Error: ${response.statusCode} - ${response.body}');
      }
    } catch (e) {
      // Handle any exceptions that occur during the request
      print('Error occurred: $e'); // Log error
      return left('An Error Occurred: $e');
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
