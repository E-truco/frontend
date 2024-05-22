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
                decoration: decoration(''),
                //controller: controllerName,
              ),
              const SizedBox(height: 24),
              TextField(
                decoration: decoration('Age'),
                //keyboardType: TextInputType.number,
                //controller: controllerAge,
              ),
              const SizedBox(height: 24),
              // DateTimeField(
              //     controller: controllerDate,
              //     decoration: decoration('Birthday'),
              //     format: DateFormat('yyyy-MM-dd'),
              //     onShowPicker: (context, currentValue) {
              //       return showDatePicker(
              //         context: context,
              //         initialDate: currentValue ?? DateTime.now(),
              //         firstDate: DateTime(1900),
              //         lastDate: DateTime(2100),
              //       );
              //     }),
              const SizedBox(
                height: 30,
              ),
              Botton(
                title: 'Login',
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

// void createUser() {
//   final newUser = User(
//     name: controllerName.text,
//     age: int.parse(controllerAge.text),
//     birthday: DateTime.parse(controllerDate.text),
//   );
//   UserService.createUser(newUser);
// }

// void updateUser(User user) {
//   user.name = controllerName.text;
//   user.age = int.parse(controllerAge.text);
//   user.birthday = DateTime.parse(controllerDate.text);
//   UserService.updateUser(user);
// }

final exitColumn = Container(
  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
  child: Column(
    children: [
      Icon(Icons.exit_to_app, color: Color.fromARGB(255, 206, 64, 54)),
      const Text('Saída'),
    ],
  ),
);

final roomStatus = Container(
    padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
    child: Column(
      children: [
        Icon(Icons.room_preferences_rounded, color: Colors.green[500]),
        const Text('Nome'), //Trazer informações da Sala (nome)
        const Text('Senha:'), //Trazer informação Senha Sala
      ],
    ));
