import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class PlusMinusIcon extends StatelessWidget {
  const PlusMinusIcon({super.key, required this.modifier});

  final int modifier;

  @override
  Widget build(BuildContext context) {
    return Icon(
      modifier > 0 ? Icons.add : Icons.remove,
      size: 20,
      color: modifier > 0 ? highestDiceColor : lowestDiceColor,
    );
  }
}
