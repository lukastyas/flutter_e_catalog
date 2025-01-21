import 'dart:convert';

class SheetResponseModel {
    final int id;
    final String companyName;
    final String nameFile;
    final List<FileElement> files;

    SheetResponseModel({
        required this.id,
        required this.companyName,
        required this.nameFile,
        required this.files,
    });

    factory SheetResponseModel.fromJson(String str) => SheetResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory SheetResponseModel.fromMap(Map<String, dynamic> json) => SheetResponseModel(
        id: json["id"],
        companyName: json["company_name"],
        nameFile: json["name_file"],
        files: List<FileElement>.from(json["files"].map((x) => FileElement.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "company_name": companyName,
        "name_file": nameFile,
        "files": List<dynamic>.from(files.map((x) => x.toMap())),
    };
}

class FileElement {
    final String fileName;
    final String fileUrl;

    FileElement({
        required this.fileName,
        required this.fileUrl,
    });

    factory FileElement.fromJson(String str) => FileElement.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory FileElement.fromMap(Map<String, dynamic> json) => FileElement(
        fileName: json["file_name"],
        fileUrl: json["file_url"],
    );

    Map<String, dynamic> toMap() => {
        "file_name": fileName,
        "file_url": fileUrl,
    };
}
