import 'package:flutter/material.dart';
import 'package:front_etruco/pages/login_screen.dart'; // Certifique-se de importar o arquivo correto

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}
