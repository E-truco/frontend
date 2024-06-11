import 'package:flutter/material.dart';

class TeamWidget extends StatelessWidget {
  final String title;
  final List<String> players;

  const TeamWidget({super.key, required this.title, required this.players});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ListView.builder(
          shrinkWrap: true,
          itemCount: players.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(players[index]),
            );
          },
        ),
      ],
    );
  }
}