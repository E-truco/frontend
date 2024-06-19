import 'dart:async';

import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late IO.Socket socket;
  final _streamController = StreamController<String>();

  String socketUrl() {
    return "http://10.199.10.231:4201";
  }

  @override
  void initState() {
    super.initState();

    // Connect to the Socket.IO server
    socket = IO.io(socketUrl(), <String, dynamic>{
      'transports': ['websocket'],
    });

    // Event listener for 'connect' event
    socket.on('connect', (_) {
      print('Connected to server');
    });

    // Listen for messages from the server
    socket.on('message', (data) {
      _streamController.add(data);
    });

    socket.emit('joinRoom',['victor', 'testes']);
  }

  @override
  void dispose() {
    socket.dispose();
    _streamController.close();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  
}

