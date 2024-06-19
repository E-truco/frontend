import 'package:flutter/material.dart';
import 'package:front_etruco/models/player_model.dart';
import 'package:front_etruco/pages/card_screen.dart';
import 'package:front_etruco/widgets/team_widget.dart';

class TeamsWidget extends StatelessWidget {
  const TeamsWidget({super.key, required this.players});

  final List<PlayerModel> players;

  @override
  build(BuildContext context) {
    return Column(
      children: [
        TeamWidget(title: 'Equipe 1', players: [
          players[0],
          players[1],
        ]),
        TeamWidget(title: 'Equipe 2', players: [players[2], players[3]]),
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
