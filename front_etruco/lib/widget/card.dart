import 'package:flutter/material.dart';

class AdjustableCard extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const AdjustableCard({
    super.key,
    this.width = 100.0, // Largura padrão
    this.height = 200.0, // Altura padrão
    this.color = const Color.fromARGB(255, 217, 212, 212), // Cor padrão
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
