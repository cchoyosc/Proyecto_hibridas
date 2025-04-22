import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';
import 'package:flutter_proyecto/screen/screen-home.dart';
import 'screen-home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),

            //Logo del aplicativo

            Image.asset(
              'assets/icons/applogo1.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),
            Center(
              child: const Text(
                AppStrings.NameApp,
                style: TextStyle(
                    color: AppColor.text,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                AppStrings.Creator,
                style: TextStyle(
                    color: AppColor.text,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
