import 'package:flutter/material.dart';
import 'package:front_etruco/widget/team_widget.dart';

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
            // Implementar ação para iniciar o jogo
          },
          child: const Text('Iniciar Jogo'),
        ),
      ],
    );
  }
}
