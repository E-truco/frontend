import 'package:front_etruco/pages/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'etruco.io',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const SafeArea(child: LoginScreen()),
    );
  }
}
