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

    factory AuthResponseModel.fromJson(String str) => AuthResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AuthResponseModel.fromMap(Map<String, dynamic> json) => AuthResponseModel(
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
    final String karyawanId;
    final String namaLengkap;
    final String kdAbsen;
    final String photoProfile;
    final DateTime tglLahir;
    final String jabatanName;

    Karyawan({
        required this.karyawanId,
        required this.namaLengkap,
        required this.kdAbsen,
        required this.photoProfile,
        required this.tglLahir,
        required this.jabatanName,
    });

    factory Karyawan.fromJson(String str) => Karyawan.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Karyawan.fromMap(Map<String, dynamic> json) => Karyawan(
        karyawanId: json["karyawan_id"],
        namaLengkap: json["nama_lengkap"],
        kdAbsen: json["kd_absen"],
        photoProfile: json["photo_profile"],
        tglLahir: DateTime.parse(json["tgl_lahir"]),
        jabatanName: json["jabatan_name"],
    );

    Map<String, dynamic> toMap() => {
        "karyawan_id": karyawanId,
        "nama_lengkap": namaLengkap,
        "kd_absen": kdAbsen,
        "photo_profile": photoProfile,
        "tgl_lahir": "${tglLahir.year.toString().padLeft(4, '0')}-${tglLahir.month.toString().padLeft(2, '0')}-${tglLahir.day.toString().padLeft(2, '0')}",
        "jabatan_name": jabatanName,
    };
}
