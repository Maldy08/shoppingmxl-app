import 'package:flutter/material.dart';
import 'features/presentation/registarpage/view/register_screen.dart';
import 'features/presentation/welcomepage/view/welcome_page.dart';
import 'features/presentation/loginpage/View/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/login-page': (context) => const LoginScreen(),
        '/register-page': (context) => const RegisterScreen(),
      },
    );
  }
}
