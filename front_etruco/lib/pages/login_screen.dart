import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bem vindo ao E-Truco'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escolha seu Nickname:',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Criar Sala'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('Entrar em Partida'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
