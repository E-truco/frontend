//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_etruco/pages/lobby_screen.dart';
//import 'package:flutter/widgets.dart';

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
                ElevatedButton(
                  child: const Text('Criar Sala'),
                  onPressed: () {},
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  child: const Text('Entrar em Partida'),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        // Cria um TextEditingController para capturar o código da sala
                        TextEditingController roomCodeController =
                            TextEditingController();
                        return AlertDialog(
                          title: const Text('Insira o Código da Sala'),
                          content: TextField(
                            controller: roomCodeController,
                            decoration: const InputDecoration(
                                hintText: 'Código da Sala'),
                          ),
                          actions: [
                            ElevatedButton(
                              child: const Text('Confirmar'),
                              onPressed: () {
                                //aqui tem que mandar o codigo para o server para verificar a sala
                                Navigator.of(context).pop();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const LobbyScreen()));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
