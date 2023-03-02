import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class RollText extends StatelessWidget {
  const RollText(
      {super.key, required this.roll, this.fontSize, this.fontWeight});

  final int roll;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$roll',
      style: TextStyle(
        fontWeight: fontWeight ?? FontWeight.w400,
        fontSize: fontSize ?? 20,
        color: (roll == 1)
            ? lowestDiceColor
            : (roll == 20)
                ? highestDiceColor
                : Colors.black,
      ),
    );
  }
}
