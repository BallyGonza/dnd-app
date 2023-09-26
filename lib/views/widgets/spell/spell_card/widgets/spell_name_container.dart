import 'package:flutter/material.dart';

class SpellNameContainer extends StatelessWidget {
  const SpellNameContainer({
    required this.spellName,
    super.key,
  });

  final String spellName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 14),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.88,
        height: 30,
        child: Align(
          child: Text(
            spellName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
