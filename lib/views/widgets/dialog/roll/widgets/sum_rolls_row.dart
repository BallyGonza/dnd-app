import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class SumRollsRow extends StatelessWidget {
  const SumRollsRow({super.key, required this.modifier, required this.rolls});

  final int modifier;
  final List<int> rolls;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SumRollText(
          rolls: rolls,
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
          '${rolls.reduce((value, element) => value + element) + modifier}',
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
