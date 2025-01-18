import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_e_catalog/core/components/build_context_ext.dart';
import 'package:url_launcher/url_launcher.dart';

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

  void _launchWhatsApp(String namaLengkap) async {
    final Uri whatsappUrl = Uri.parse(
        'https://wa.me/6281267289591?text=Hello%20HC%20Arita%2C%20$namaLengkap%20Saya%20Butuh%20bantuan%20Login%20ke%20E-Catalog%2C%20saya%20lupa%20kode%20absen');
    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Could not launch WhatsApp',
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
          CustomTextField(
            controller: absenCodeController,
            label: 'Kode Absen',
            obscureText: false,
          ),
          const SizedBox(height: 12.0),
          CustomTextField(
            controller: tglLahirController,
            label: 'Tanggal Lahir (YYYY-MM-DD)',
            obscureText: false,
          ),
          const SizedBox(height: 16.0),
          GestureDetector(
            onTap: () {
              _launchWhatsApp(''); // Placeholder, akan diupdate setelah login
            },
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
              ),
            ),
          ),
          const SizedBox(height: 42.0),
          BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                success: (data) {
                  // Simpan data ke local storage
                  AuthLocalDatasource().saveAuthData(data);
                  // String namaLengkap = data.data.karyawan.namaLengkap;
                  // _launchWhatsApp(
                  //     namaLengkap); // Luncurkan WhatsApp dengan nama lengkap

                  // Snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Login Success',
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

                    // Konversi string tgl lahir ke DateTime
                    DateTime? tglLahir;
                    try {
                      tglLahir = DateTime.parse(tglLahirController.text);
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Tanggal lahir tidak valid.'),
                          backgroundColor: AppColors.lightRed,
                        ),
                      );
                      return;
                    }

                    // Buat model permintaan login
                    final requestModel = LoginRequestModel(
                      absenCode: absenCodeController.text,
                      tglLahir: tglLahir,
                    );
                    context
                        .read<LoginBloc>()
                        .add(LoginEvent.login(requestModel));
                  },
                  label: 'LOG IN',
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
              // Aksi ketika "Sign up" ditekan
              // context.pushReplacement(const RegisterPage());
            },
            child: const Text.rich(
              TextSpan(
                text: 'Don\'t have an account? ',
                children: [
                  TextSpan(
                    text: 'Sign up',
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
