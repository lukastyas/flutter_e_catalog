import 'dart:convert';

class CompanyResponseModel {
  final int id;
  final String companyName;
  final List<Company> files;

  CompanyResponseModel({
    required this.id,
    required this.companyName,
    required this.files,
  });

  factory CompanyResponseModel.fromJson(String str) =>
      CompanyResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompanyResponseModel.fromMap(Map<String, dynamic> json) =>
      CompanyResponseModel(
        id: json["id"],
        companyName: json["company_name"],
        files: List<Company>.from(
            json["files"].map((x) => Company.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "company_name": companyName,
        "files": List<dynamic>.from(files.map((x) => x.toMap())),
      };
}

class Company {
  final String fileName;
  final String fileUrl;

  Company({
    required this.fileName,
    required this.fileUrl,
  });

  factory Company.fromJson(String str) =>
      Company.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Company.fromMap(Map<String, dynamic> json) => Company(
        fileName: json["file_name"],
        fileUrl: json["file_url"],
      );

  Map<String, dynamic> toMap() => {
        "file_name": fileName,
        "file_url": fileUrl,
      };
}
