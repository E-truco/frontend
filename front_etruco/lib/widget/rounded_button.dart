import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
    this.label, {
    super.key,
    this.onPressed,
  });

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
