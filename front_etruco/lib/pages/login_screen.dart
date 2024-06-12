//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_etruco/pages/lobby_second_screen.dart';
import 'package:front_etruco/widget/room_modal.dart';
import 'package:front_etruco/widget/rounded_button.dart';
//import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void navigateToLobbyScreen(BuildContext context) {
    Navigator.of(context).pop();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LobbyScreen()));
  }

  void showMatchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => const RoomModal(),
    );
  }

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
              'imagens/icon_cards.png',
              width: 130,
              height: 130,
            ),
            const Text('Etruco',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escolha seu Nickname:',
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedButton(
                  'Criar Sala',
                  onPressed: () => navigateToLobbyScreen(context),
                ),
                const SizedBox(width: 30),
                RoundedButton(
                  'Entrar em Partida',
                  onPressed: () => showMatchDialog(context),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
