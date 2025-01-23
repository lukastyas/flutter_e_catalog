import 'dart:convert';

class CompanyResponseModel {
  final bool status;
  final int code;
  final String message;
  final List<Company> data;

  CompanyResponseModel({
    required this.status,
    required this.code,
    required this.message,
    required this.data,
  });

  factory CompanyResponseModel.fromJson(String str) => CompanyResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompanyResponseModel.fromMap(Map<String, dynamic> json) => CompanyResponseModel(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Company>.from(json["data"]!.map((x) => Company.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Company {
  final int id;
  final DateTime uploadedAt;
  final String companyName;
  final String companyCode;
  final List<FileElement> files;

  Company({
    required this.id,
    required this.uploadedAt,
    required this.companyName,
    required this.companyCode,
    required this.files,
  });

  factory Company.fromJson(String str) => Company.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Company.fromMap(Map<String, dynamic> json) => Company(
        id: json["id"],
        uploadedAt: DateTime.parse(json["uploaded_at"]),
        companyName: json["company_name"],
        companyCode: json["company_code"],
        files: json["files"] == null ? [] : List<FileElement>.from(json["files"]!.map((x) => FileElement.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "uploaded_at": uploadedAt.toIso8601String(),
        "company_name": companyName,
        "company_code": companyCode,
        "files": List<dynamic>.from(files.map((x) => x.toMap())),
      };
}

class FileElement {
  final String fileName;
  final String fileUrl;
  final String fileType;

  FileElement({
    required this.fileName,
    required this.fileUrl,
    required this.fileType,
  });

  factory FileElement.fromJson(String str) => FileElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FileElement.fromMap(Map<String, dynamic> json) => FileElement(
        fileName: json["file_name"],
        fileUrl: json["file_url"],
        fileType: json["file_type"],
      );

  Map<String, dynamic> toMap() => {
        "file_name": fileName,
        "file_url": fileUrl,
        "file_type": fileType,
      };
}
