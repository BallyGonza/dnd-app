import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class RollChip extends StatelessWidget {
  const RollChip({
    Key? key,
    required this.roll,
    required this.modifier,
    required this.dice,
  }) : super(key: key);

  final int roll;
  final int modifier;
  final Dice dice;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: (roll == 1 + modifier)
          ? lowestDiceColor
          : (roll == dice.sides + modifier)
              ? highestDiceColor
              : Colors.black,
      label: Text(
        '$roll',
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
