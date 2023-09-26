import 'package:flutter/material.dart';

class SpellLevelContainer extends StatelessWidget {
  const SpellLevelContainer({
    required this.level,
    super.key,
  });

  final String level;

  @override
  Widget build(BuildContext context) {
    return Text(
      level,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: Colors.white,
      ),
    );
  }
}
