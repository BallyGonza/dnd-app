import 'package:flutter/material.dart';

class SpellNameContainer extends StatelessWidget {
  const SpellNameContainer({
    Key? key,
    required this.spellName,
  }) : super(key: key);

  final String spellName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.88,
        height: 30.0,
        child: Align(
          alignment: Alignment.center,
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
