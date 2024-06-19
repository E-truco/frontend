import 'package:flutter/material.dart';
import 'package:front_etruco/pages/card_screen.dart';
import 'package:front_etruco/widgets/team_widget.dart';

class TeamsWidget extends StatelessWidget {
  const TeamsWidget({super.key});

  @override
  build(BuildContext context) {
    return Column(
      children: [
        const TeamWidget(
            title: 'Equipe 1', players: ['Habibers123', 'DiogoPUNK']),
        const TeamWidget(
            title: 'Equipe 2', players: ['Edicarsia0202', 'WickedNoah']),
        const Text('Convite: 24b/19'), // Contador de convites
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CardScreen()));
          },
          child: const Text('Iniciar Jogo'),
        ),
      ],
    );
  }
}
