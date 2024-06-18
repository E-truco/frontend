import 'package:flutter/material.dart';
import 'package:front_etruco/widget/card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 83, 40),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [AdjustableCard(), AdjustableCard(), AdjustableCard()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [AdjustableCard(), AdjustableCard(), AdjustableCard()],
            )
          ],
        ),
      ),
    );
  }
}
