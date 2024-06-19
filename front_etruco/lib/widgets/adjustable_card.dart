import 'package:flutter/material.dart';
import 'package:front_etruco/models/card_model.dart';

class AdjustableCard extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final CardModel card;

  const AdjustableCard(
      {super.key,
      this.width = 100.0, // Largura padrão
      this.height = 200.0, // Altura padrão
      this.color = const Color.fromARGB(255, 217, 212, 212), // Cor padrão
      required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: Column(
        children: [
          Text(card.value.toString()),
          Text(card.suit),
        ],
      ),
    );
  }
}
