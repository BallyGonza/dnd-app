import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class SumRollRow extends StatelessWidget {
  const SumRollRow({super.key, required this.modifier, required this.roll});

  final int modifier;
  final int roll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RollText(
          roll: roll,
        ),
        const SizedBox(width: 10),
        PlusMinusIcon(modifier: modifier),
        const SizedBox(width: 10),
        Text(
          '${modifier.abs()}',
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 10),
        const Icon(
          Icons.arrow_forward,
          size: 20,
        ),
        const SizedBox(width: 10),
        Text(
          '${roll + modifier}',
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
