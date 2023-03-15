import 'package:flutter/material.dart';

class RollText extends StatelessWidget {
  const RollText({super.key, required this.roll});

  final int roll;

  @override
  Widget build(BuildContext context) {
    return Text(
      roll.toString(),
      style: const TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
