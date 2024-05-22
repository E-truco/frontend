import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 255, 131),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/imagens/icon_cards.png',
              width: 180,
              height: 180,
            ),
            const Text('Etruco',
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escolha seu Nickname:',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Criar Sala'),
                  onPressed: () {},
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  child: const Text('Entrar em Partida'),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
