import 'dart:convert';

class LoginRequestModel {
  final String absenCode;
  final String tglLahir;

  LoginRequestModel({
    required this.absenCode,
    required this.tglLahir,
  });

  factory LoginRequestModel.fromJson(String str) =>
      LoginRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginRequestModel.fromMap(Map<String, dynamic> json) =>
      LoginRequestModel(
        absenCode: json["absen_code"],
        tglLahir: json["tgl_lahir"], //DateTime.parse(json["tgl_lahir"]
      );

  Map<String, dynamic> toMap() => {
        "absen_code": absenCode,
        "tgl_lahir": tglLahir,
        // "${tglLahir.year.toString().padLeft(4, '0')}-${tglLahir.month.toString().padLeft(2, '0')}-${tglLahir.day.toString().padLeft(2, '0')}",
      };
}
