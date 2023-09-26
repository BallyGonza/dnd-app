import 'package:flutter/material.dart';

class SpellDescriptionContainer extends StatelessWidget {
  const SpellDescriptionContainer({
    required this.spellDescription,
    super.key,
  });

  final String spellDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/logos/spell_back.png'),
          fit: BoxFit.contain,
          opacity: 0.1,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Text(
        spellDescription,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}
