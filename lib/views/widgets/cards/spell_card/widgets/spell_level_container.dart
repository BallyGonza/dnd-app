import 'package:flutter/material.dart';

class SpellLevelContainer extends StatelessWidget {
  const SpellLevelContainer({
    Key? key,
    required this.level,
  }) : super(key: key);

  final String level;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Nivel $level',
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: Colors.white,
      ),
    );
  }
}
