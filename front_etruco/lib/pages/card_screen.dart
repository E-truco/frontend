import 'package:flutter/material.dart';
import 'package:front_etruco/models/card_model.dart';
import 'package:front_etruco/widgets/adjustable_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var card = CardModel(suit: 'paus', value: 1);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 83, 40),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AdjustableCard(card: card),
                AdjustableCard(card: card),
                AdjustableCard(card: card)
              ],
            )
          ],
        ),
      ),
    );
  }
}
