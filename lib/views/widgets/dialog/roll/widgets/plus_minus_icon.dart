import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlusMinusIcon extends StatelessWidget {
  const PlusMinusIcon({super.key, required this.modifier});

  final int modifier;

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      modifier >= 0 ? FontAwesomeIcons.plus : FontAwesomeIcons.minus,
      size: 15,
      color: modifier > 0
          ? highestDiceColor
          : modifier < 0
              ? Colors.red
              : Colors.grey,
    );
  }
}
