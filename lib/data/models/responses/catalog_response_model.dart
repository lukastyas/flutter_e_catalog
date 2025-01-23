import 'dart:convert';

class CatalogResponseModel {
  final bool status;
  final int code;
  final String message;
  final List<Catalog> data;

  CatalogResponseModel({
    required this.status,
    required this.code,
    required this.message,
    required this.data,
  });

  factory CatalogResponseModel.fromJson(String str) => CatalogResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CatalogResponseModel.fromMap(Map<String, dynamic> json) => CatalogResponseModel(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        data: List<Catalog>.from(json["data"].map((x) => Catalog.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Catalog {
  final String id;
  final DateTime uploadedAt;
  final String companyName;
  final String companyCode;
  final String nameFile;
  final List<FileElement> files;

  Catalog({
    required this.id,
    required this.uploadedAt,
    required this.companyName,
    required this.companyCode,
    required this.nameFile,
    required this.files,
  });

  factory Catalog.fromJson(String str) => Catalog.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Catalog.fromMap(Map<String, dynamic> json) => Catalog(
        id: json["id"],
        uploadedAt: DateTime.parse(json["uploaded_at"]),
        companyName: json["company_name"],
        companyCode: json["company_code"],
        nameFile: json["name_file"],
        files: List<FileElement>.from(json["files"].map((x) => FileElement.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "uploaded_at": uploadedAt.toIso8601String(),
        "company_name": companyName,
        "company_code": companyCode,
        "name_file": nameFile,
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
