import 'package:flutter/material.dart';
import 'package:shoppingmxl/colors/colors.dart';
import 'package:shoppingmxl/features/presentation/customWidgets/custom_appbar.dart';
import 'package:shoppingmxl/features/presentation/customWidgets/custom_elevated_button.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Sign in',
      ),
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
                  height: 260,
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
                            Icons.mail_outline,
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
                            Icons.lock_outline,
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
                          func: () {},
                          label: 'Iniciar sesión',
                          color: primaryColor)
                    ],
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    '-o inicia sesión-',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(0.5),
                      child: SignInButton(
                        Buttons.Facebook,
                        onPressed: () {},
                        text: 'Iniciar con Facebook',
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0.5),
                      child: SignInButton(
                        Buttons.Google,
                        onPressed: () {},
                        text: 'Iniciar con Google',
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
