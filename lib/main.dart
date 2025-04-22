import 'package:flutter/material.dart';
import 'package:flutter_proyecto/core/routes.dart';
import 'package:flutter_proyecto/core/string.dart';
import 'package:flutter_proyecto/screen/screen-home.dart';
import 'package:flutter_proyecto/screen/screnn-login.dart';
import 'package:flutter_proyecto/screen/screnn-splash.dart';
import 'screen/screen-register.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.NameApp,
      initialRoute: Routes.splash,
      routes: {
        Routes.splash: (context) => const SplashScreen(),
        Routes.home: (context) => const HomeScreen(),
        Routes.login: (context) => const LoginScreen(),
        Routes.regis: (context) => const RegisterScreen(),
      },
    );
  }
}
