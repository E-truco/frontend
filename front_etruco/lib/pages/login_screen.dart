import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String nomeDoUsuario = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 255, 131, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              setState(() {
                nomeDoUsuario = value;
              });
            },
            decoration: const InputDecoration(
              labelText: 'Nome do Usuário',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
