import 'dart:convert';

class AuthResponseModel {
  final bool success;
  final Data data;
  final String message;

  AuthResponseModel({
    required this.success,
    required this.data,
    required this.message,
  });

  factory AuthResponseModel.fromJson(String str) =>
      AuthResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthResponseModel.fromMap(Map<String, dynamic> json) =>
      AuthResponseModel(
        success: json["success"],
        data: Data.fromMap(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "data": data.toMap(),
        "message": message,
      };
}

class Data {
  final Karyawan karyawan;
  final String token;

  Data({
    required this.karyawan,
    required this.token,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        karyawan: Karyawan.fromMap(json["karyawan"]),
        token: json["token"],
      );

  Map<String, dynamic> toMap() => {
        "karyawan": karyawan.toMap(),
        "token": token,
      };
}

class Karyawan {
  final String id;
  final String nik;
  final String kdAbsen;
  final String namaLengkap;
  final dynamic photoProfile;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic deletedAt;

  Karyawan({
    required this.id,
    required this.nik,
    required this.kdAbsen,
    required this.namaLengkap,
    required this.photoProfile,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Karyawan.fromJson(String str) => Karyawan.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Karyawan.fromMap(Map<String, dynamic> json) => Karyawan(
        id: json["id"],
        nik: json["nik"],
        kdAbsen: json["kd_absen"],
        namaLengkap: json["nama_lengkap"],
        photoProfile: json["photo_profile"] ?? '-',
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"] ?? '-',
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nik": nik,
        "kd_absen": kdAbsen,
        "nama_lengkap": namaLengkap,
        "photo_profile": photoProfile,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}
