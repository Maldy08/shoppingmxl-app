import 'package:flutter/material.dart';
import './widgets/bottom_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShoppingMXL'),
      ),
      body: const Center(
        child: Text('Shopping MXL'),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
