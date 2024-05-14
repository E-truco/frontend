import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //     home: Scaffold(
  //       body: Center(
  //         child: Text('Hello Ícaro!'),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lobby'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: decoration('Name'),
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
                height: 32,
              ),
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
