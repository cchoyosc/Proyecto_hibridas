import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        backgroundColor: AppColor.primary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
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
              child: const Text(
                AppStrings.Name,
                style: TextStyle(
                    color: AppColor.text,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Nombre completo',
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
            Center(
              child: const Text(
                AppStrings.Mail,
                style: TextStyle(
                    color: AppColor.text,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
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
            Center(
              child: const Text(
                AppStrings.Password,
                style: TextStyle(
                    color: AppColor.text,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
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
            Center(
              child: const Text(
                AppStrings.ConfirmPass,
                style: TextStyle(
                    color: AppColor.text,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirmar Contraseña',
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
            Center(
              child: const Text(
                AppStrings.Addres,
                style: TextStyle(
                    color: AppColor.text,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Direccion',
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
                    backgroundColor: AppColor.text,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: AppColor.secondary, width: 2))),
                child: const Text(
                  AppStrings.Save,
                  style: TextStyle(color: AppColor.primary, fontSize: 20),
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
