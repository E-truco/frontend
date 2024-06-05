import 'package:flutter/material.dart';
import 'package:animated_widgets/animated_widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartas Animadas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildAnimatedCard(),
            const SizedBox(height: 20),
            _buildAnimatedCard(),
            const SizedBox(height: 20),
            _buildAnimatedCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedCard() {
    return OpacityAnimatedWidget.tween(
      opacityEnabled: 0, //define start value
      opacityDisabled: 1, //and end value
      duration: const Duration(
          seconds: 2), //and duration to go from start to end value
      child: Container(
        height: 100,
        width: 200,
        color: Colors.blue,
        // Adicione seus assets aqui
      ),
    );
}   
}
