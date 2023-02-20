import 'package:flutter/material.dart';
import 'package:shoppingmxl/features/presentation/customWidgets/custom_elevated_button.dart';
import 'package:shoppingmxl/colors/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 249, 255, 1),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 310,
                height: 300,
                padding: const EdgeInsets.all(30),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.15),
                  child: Image.asset(
                    'assets/images/flutter-logo.png',
                    width: 140,
                    height: 140,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Text(
                  'Bienvenido a',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      fontSize: 25),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'En Offerta!!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: SizedBox(
                    width: 260.00,
                    height: 50,
                    child: CustomElevatedButton(
                      func: () {
                        Navigator.pushNamed(context, '/login-page');
                      },
                      label: 'Login',
                      color: primaryColor,
                    ) //boton,
                    ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: SizedBox(
                  width: 260.00,
                  height: 50,
                  child: CustomElevatedButton(
                    func: () {
                      Navigator.pushNamed(context, '/register-page');
                    },
                    label: 'Registrarte',
                    color: green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
