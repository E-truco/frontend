import 'package:flutter/material.dart';
import 'package:front_etruco/pages/lobby_screen.dart';

class RoomModal extends StatelessWidget {
  const RoomModal({super.key});

  @override
  Widget build(BuildContext context) {
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
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LobbyScreen()));
          },
        ),
      ],
    );
  }
}
