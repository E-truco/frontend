import 'package:flutter/material.dart';
import 'package:front_etruco/pages/lobby_second_screen.dart';

class ElevatedButton extends StatelessWidget {
  const ElevatedButton({
    super.key,
    required Text child,
    required Null Function() onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Entrar em Partida'),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // Cria um TextEditingController para capturar o código da sala
            TextEditingController roomCodeController = TextEditingController();
            return AlertDialog(
              title: const Text('Insira o Código da Sala'),
              content: TextField(
                controller: roomCodeController,
                decoration: const InputDecoration(hintText: 'Código da Sala'),
              ),
              actions: [
                ElevatedButton(
                  child: const Text('Confirmar'),
                  onPressed: () {
                    //Criar um verificador de existencia de sala
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
    );
  }
}
