import 'package:flutter/material.dart';

class SumRollText extends StatelessWidget {
  const SumRollText({
    required this.rolls,
    super.key,
    this.fontSize,
    this.fontWeight,
  });

  final List<int> rolls;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      rolls.reduce((value, element) => value + element).toString(),
      style: TextStyle(
        fontSize: fontSize ?? 20,
        color: Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
