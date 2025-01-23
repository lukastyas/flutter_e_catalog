import 'dart:convert';

class LoginRequestModel {
  final String absenCode;
  final String tglLahir;

  LoginRequestModel({
    required this.absenCode,
    required this.tglLahir,
  });

  factory LoginRequestModel.fromJson(String str) => LoginRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginRequestModel.fromMap(Map<String, dynamic> json) => LoginRequestModel(
        absenCode: json["absen_code"],
        tglLahir: json["tgl_lahir"],
      );

  Map<String, dynamic> toMap() => {
        "absen_code": absenCode,
        "tgl_lahir": tglLahir,
      };
}
