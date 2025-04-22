import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        backgroundColor: AppColor.primary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'assets/icons/applogo1.png',
              width: 100,
              height: 100,
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
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: AppColor.text,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: AppColor.secondary,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: AppColor.text,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: AppColor.secondary,
                    width: 2,
                  ),
                ),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
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
              child: const Text(
                AppStrings.Recover,
                style: TextStyle(
                    color: AppColor.text,
                    fontSize: 15,
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
                    backgroundColor: AppColor.text,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: AppColor.secondary, width: 2))),
                child: const Text(
                  AppStrings.Google,
                  style: TextStyle(color: AppColor.secondary, fontSize: 20),
                ),
              ),
            ),
            Center(
              child: const Text(
                AppStrings.Donkey,
                style: TextStyle(
                    color: AppColor.text,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
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
}
