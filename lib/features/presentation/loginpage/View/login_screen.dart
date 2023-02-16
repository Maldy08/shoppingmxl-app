import 'package:flutter/material.dart';
import 'package:shoppingmxl/colors/colors.dart';
import 'package:shoppingmxl/features/presentation/customWidgets/custom_elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgContainer,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 250,
                  padding: const EdgeInsets.all(30),
                  child: Image.asset(
                    'assets/images/login-image.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  width: 350,
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(30),
                  child: Form(
                      child: ListView(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          isDense: true,
                          prefixIcon: Icon(
                            Icons.account_circle_rounded,
                            color: primaryColor,
                          ),
                          filled: true,
                          fillColor: bgContainer,
                          labelText: 'Correo',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          isDense: true,
                          prefixIcon: Icon(
                            Icons.password_rounded,
                            color: primaryColor,
                          ),
                          filled: true,
                          fillColor: bgContainer,
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomElevatedButton(
                          func: () {}, label: 'Iniciar sesion', color: green)
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
