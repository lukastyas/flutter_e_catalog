import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_e_catalog/core/components/build_context_ext.dart';
import 'package:flutter_e_catalog/core/constants/variables.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/constants/colors.dart';
import '../../../data/datasource/auth_local_datasource.dart';
import '../../../data/models/request/login_request_model.dart';
import '../../home/pages/dashboard_page.dart';
import '../../auth/bloc/login/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final absenCodeController = TextEditingController();
  final tglLahirController = TextEditingController();

  @override
  void dispose() {
    absenCodeController.dispose();
    tglLahirController.dispose();
    super.dispose();
  }

  Future<void> _launchWhatsApp() async {
    try {
      final response = await http.get(
        Uri.parse('${Variables.baseUrl}/api/v1/generate-whatshapp-url'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final String whatsappUrl = data['url'];

        if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
          await launchUrl(Uri.parse(whatsappUrl));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Tidak dapat membuka WhatsApp',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: AppColors.lightRed,
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Gagal mengambil URL WhatsApp',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: AppColors.lightRed,
          ),
        );
      }
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Terjadi kesalahan saat mengambil URL WhatsApp',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: AppColors.lightRed,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 80.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Image.asset(
              Assets.images.logo.path,
              width: 150,
              height: 150,
            ),
          ),
          const SizedBox(height: 10.0),
          const Center(
            child: Text(
              'E-Catalog',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          const Center(
            child: Text(
              "PT ARITA PRIMA INDONESIA Tbk",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: const Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          CustomTextField(
            controller: absenCodeController,
            label: 'Kode Absen',
            obscureText: false,
          ),
          const SizedBox(height: 12.0),
          CustomTextField(
            controller: tglLahirController,
            label: 'Tanggal Lahir (DDMMYYYY)',
            obscureText: false,
          ),
          const SizedBox(height: 12.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: _launchWhatsApp,
              child: const Text(
                'Lupa Kata Sandi?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
          const SizedBox(height: 42.0),
          BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                success: (data) {
                  AuthLocalDatasource().saveAuthData(data);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Login Berhasil',
                        style: TextStyle(color: Colors.black),
                      ),
                      backgroundColor: AppColors.lightGreen,
                    ),
                  );
                  context.pushReplacement(const DashboardPage());
                },
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        message,
                        style: const TextStyle(color: Colors.black),
                      ),
                      backgroundColor: AppColors.lightRed,
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Button.filled(
                  onPressed: () {
                    // Validasi input
                    if (absenCodeController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Kode Absen harus diisi.',
                            style: TextStyle(color: Colors.black),
                          ),
                          backgroundColor: AppColors.lightRed,
                        ),
                      );
                      return;
                    }

                    if (tglLahirController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Tanggal Lahir harus diisi.',
                            style: TextStyle(color: Colors.black),
                          ),
                          backgroundColor: AppColors.lightRed,
                        ),
                      );
                      return;
                    }

                    // Trim input untuk menghapus spasi di awal/akhir
                    String inputDate = tglLahirController.text.trim();
                    print('Input Tanggal: $inputDate'); // Log untuk debugging

                    // Konversi string tgl lahir ke DateTime
                    DateTime? tglLahir;
                    try {
                      // Parse tanggal dari format DDMMYYYY
                      tglLahir = DateTime(
                        int.parse(inputDate.substring(4, 8)), // YYYY
                        int.parse(inputDate.substring(2, 4)), // MM
                        int.parse(inputDate.substring(0, 2)), // DD
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Tanggal lahir tidak valid.'),
                          backgroundColor: AppColors.lightRed,
                        ),
                      );
                      return;
                    }

                    // Format tanggal ke YYYY-MM-DD untuk server
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(tglLahir);

                    // Buat model permintaan login
                    final requestModel = LoginRequestModel(
                      absenCode: absenCodeController.text,
                      tglLahir:
                          formattedDate, // Kirim tanggal yang sudah diformat
                    );
                    context
                        .read<LoginBloc>()
                        .add(LoginEvent.login(requestModel));
                  },
                  label: 'LOGIN',
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
          const SizedBox(height: 24.0),
          GestureDetector(
            onTap: () {
              // Aksi ketika "Daftar" ditekan
              // context.pushReplacement(const RegisterPage());
            },
            child: const Text.rich(
              TextSpan(
                text: 'Belum punya akun? ',
                children: [
                  TextSpan(
                    text: 'Daftar',
                    style: TextStyle(color: AppColors.primary),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
