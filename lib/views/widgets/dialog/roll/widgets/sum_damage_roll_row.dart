import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class SumDamageRollsRow extends StatelessWidget {
  const SumDamageRollsRow(
      {super.key,
      required this.modifier,
      required this.rolls,
      required this.toHitRoll,
      required this.dice});

  final Dice dice;
  final int modifier;
  final int toHitRoll;
  final List<int> rolls;

  @override
  Widget build(BuildContext context) {
    if (toHitRoll == 20) {
      for (int i = 0; i < rolls.length; i++) {
        rolls[i] = rolls[i] * 2;
      }
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          dice.img,
          height: 20,
          width: 20,
        ),
        const Spacer(),
        Row(
          children: <Widget>[
            Text(
              rolls.reduce((value, element) => value + element).toString(),
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(width: 10),
            PlusMinusIcon(modifier: modifier),
            const SizedBox(width: 10),
            Text(
              '${modifier.abs()}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.green,
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
        ),
      ],
    );
  }
}
