import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_e_catalog/data/datasource/auth_local_datasource.dart';
import 'package:flutter_e_catalog/data/datasource/auth_remote_datasource.dart';
import 'package:flutter_e_catalog/data/datasource/onboarding_local_datasource.dart';
import 'package:flutter_e_catalog/data/models/responses/auth_response_model.dart';
import 'package:flutter_e_catalog/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_e_catalog/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:flutter_e_catalog/presentation/auth/pages/login_page.dart';
import 'package:flutter_e_catalog/presentation/home/pages/dashboard_page.dart';
import 'package:flutter_e_catalog/presentation/onboarding/pages/onboarding_page.dart';
// import 'package:flutter_e_catalog/presentation/onboarding/pages/started.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            // primarySwatch: Colors.blue,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
          ),
          home: FutureBuilder<AuthResponseModel>(
            future: AuthLocalDatasource().getAuthData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return const DashboardPage();
              } else {
                return FutureBuilder<bool>(
                    future: OnboardingLocalDatasource().getIsFirstTime(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return snapshot.hasData
                            ? const LoginPage()
                            : const OnboardingPage();
                      } else {
                        return const OnboardingPage();
                      }
                    });
              }
            },
          )),
    );
  }
}
