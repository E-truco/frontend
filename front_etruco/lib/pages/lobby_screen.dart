import 'package:flutter/material.dart';
import 'package:front_etruco/widgets/teams_widget.dart';

class LobbyScreen extends StatelessWidget {
  const LobbyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 255, 131),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [TeamsWidget()],
        ),
      ),
    );
  }
}
