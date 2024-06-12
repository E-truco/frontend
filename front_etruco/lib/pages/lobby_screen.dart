import 'package:flutter/material.dart';
// ignore: unused_import
// import 'package:front_etruco/main.dart';
import 'package:front_etruco/widget/botton.dart';

class LobbyScreen extends StatelessWidget {
  const LobbyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lobby'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  width: 440,
                  child: exitColumn,
                ),
                SizedBox.expand(
                  child: roomStatus,
                )
              ]), //dividir em 20 80 (Saída e Status sala)
              TextField(
                decoration: decoration('Equipe 1'),
                //controller: controllerName,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Jogador 1',
                      ),
                    ),
                  ]),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Jogador 2',
                      ),
                    ),
                  ]),
              TextField(
                decoration: decoration('Equipe 2'),
                //controller: controllerName,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Jogador 3',
                      ),
                    ),
                  ]),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Jogador 4',
                      ),
                    ),
                  ]),

              const SizedBox(height: 24),
              Botton(
                title: 'Pronto',
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                color: Colors.blueAccent,
              )
              // ElevatedButton(
              //   onPressed: () {
              //     if (user == null) {
              //       createUser();
              //     } else {
              //       updateUser(user!);
              //     }
              //     Navigator.pop(context);
              //   },
              //   child: Text(titleAction),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

InputDecoration decoration(String label) {
  return InputDecoration(
    labelText: label,
    border: const OutlineInputBorder(),
  );
}

final exitColumn = Container(
  color: Colors.red,
  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
  child: const Column(
    children: [
      Icon(Icons.exit_to_app, color: Color.fromARGB(255, 206, 64, 54)),
      Text('Saída'),
    ],
  ),
);

final roomStatus = Container(
    color: Colors.blue,
    padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
    child: Column(
      children: [
        Icon(Icons.room_preferences_rounded, color: Colors.green[500]),
        const Text('Nome'), //Trazer informações da Sala (nome)
        const Text('Senha:'), //Trazer informação Senha Sala
      ],
    ));
