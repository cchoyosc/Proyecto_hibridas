import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            'assets/icons/applogo1.png',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
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
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.login);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.secondary,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: AppColor.secondary, width: 2))),
              child: const Text(
                AppStrings.Begin,
                style: TextStyle(color: AppColor.text, fontSize: 30),
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.regis);
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                splashFactory: NoSplash.splashFactory,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                foregroundColor: Colors.black, // Color del texto
              ),
              child: const Text(
                AppStrings.Register,
                style: TextStyle(color: AppColor.secondary, fontSize: 20),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
