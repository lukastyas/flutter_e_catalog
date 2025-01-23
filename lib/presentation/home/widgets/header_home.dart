import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_e_catalog/core/components/build_context_ext.dart';
import 'package:flutter_e_catalog/core/extensions/build_context_ext.dart';
import 'package:flutter_e_catalog/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:flutter_e_catalog/presentation/auth/pages/login_page.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import '../../../data/datasource/auth_local_datasource.dart';
import '../../../data/models/responses/auth_response_model.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  // final bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(24.0),
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                child: FutureBuilder<AuthResponseModel>(
                  future: AuthLocalDatasource().getAuthData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      // Ambil photoProfile
                      String photoProfile =
                          snapshot.data!.data.karyawan.photoProfile;
                      String fullName =
                          snapshot.data!.data.karyawan.namaLengkap;
                      String jabatanName =
                          snapshot.data!.data.karyawan.jabatanName;

                      // Cek apakah photoProfile valid
                      if (photoProfile == '-') {
                        // Ambil inisial dari nama
                        List<String> nameParts = fullName.split(' ');
                        String initials = '';
                        if (nameParts.isNotEmpty) {
                          initials +=
                              nameParts[0][0]; // Huruf pertama dari nama depan
                          if (nameParts.length > 1) {
                            initials += nameParts[1]
                                [0]; // Huruf pertama dari nama belakang
                          }
                        }
                        // Tampilkan inisial dalam lingkaran
                        return Container(
                          width: 64.0,
                          height: 64.0,
                          decoration: BoxDecoration(
                            color: Colors
                                .grey[300], // Warna latar belakang lingkaran
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              initials.toUpperCase(),
                              style: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        );
                      } else {
                        // Tampilkan gambar dari URL jika ada
                        return Image.network(
                          photoProfile,
                          width: 64.0,
                          height: 64.0,
                          fit: BoxFit.cover,
                        );
                      }
                    } else {
                      // Tampilkan gambar default jika data belum ada
                      return Assets.images.imgSuccess.image(
                        width: 64.0,
                        height: 64.0,
                        fit: BoxFit.cover,
                      );
                    }
                  },
                ),
              ),
              const SizedBox(width: 16.0),
              SizedBox(
                width: context.deviceWidth - 208.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Halo,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    FutureBuilder<AuthResponseModel>(
                      future: AuthLocalDatasource().getAuthData(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                snapshot.data!.data.karyawan.namaLengkap,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                snapshot.data!.data.karyawan.jabatanName,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ],
                ),
              ),
              const Spacer(),
              BlocConsumer<LogoutBloc, LogoutState>(
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    success: (_) {
                      AuthLocalDatasource().removeAuthData();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                  );
                },
                builder: (context, state) {
                  return IconButton(
                    onPressed: () {
                      context
                          .read<LogoutBloc>()
                          .add(const LogoutEvent.logout());
                    },
                    icon: Container(
                      width: 40.0,
                      height: 40.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: AppColors.white.withValues(alpha: 0.3),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                      ),
                      child: Assets.icons.logout.image(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
