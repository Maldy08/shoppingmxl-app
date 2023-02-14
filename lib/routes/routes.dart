import 'package:flutter/material.dart';

import '../features/presentation/loginpage/view/login_screen.dart';
import '../features/presentation/welcomepage/view/welcome_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (context) => const WelcomePage(),
  'login': (context) => const LoginScreen(),
};
