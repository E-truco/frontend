import 'package:flutter/material.dart';
import 'package:front_etruco/pages/login_screen.dart'; // Import the correct file as needed
import 'dart:async';
import 'package:socket_io_client/socket_io_client.dart' as IO;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final SocketManager _socketManager;

  @override
  void initState() {
    super.initState();
    _socketManager = SocketManager();
    _socketManager.connect();
  }

  @override
  void dispose() {
    _socketManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(), // Adjust as per your app structure
    );
  }
}

class SocketManager {
  late final IO.Socket _socket;
  final _streamController = StreamController<String>();

  SocketManager() : _socket = _initializeSocket();

  static IO.Socket _initializeSocket() {
    return IO.io(
      "http://10.199.10.231:4201",
      <String, dynamic>{
        'transports': ['websocket'],
      },
    );
  }

  void connect() {
    _socket.connect();

    // Event listener for 'connect' event
    _socket.on('connect', (_) {
      print('Connected to server');
    });

    // Listen for messages from the server
    _socket.on('message', (data) {
      _streamController.add(data);
    });

    _socket.emit('joinRoom', ['victor', 'testes']);
  }

  void dispose() {
    _socket.dispose();
    _streamController.close();
  }
}