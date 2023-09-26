import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class ListOfRolls extends StatelessWidget {
  const ListOfRolls({
    required this.rolls,
    required this.dice,
    required this.modifier,
    super.key,
  });

  final List<int> rolls;
  final DiceModel dice;
  final int modifier;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: rolls
          .map(
            (roll) => RollChip(
              roll: roll,
              modifier: modifier,
              dice: dice,
            ),
          )
          .toList(),
    );
  }
}
