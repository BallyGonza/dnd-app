import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class WeaponThrowRow extends StatelessWidget {
  const WeaponThrowRow({
    Key? key,
    required this.weapon,
    required this.title,
  }) : super(key: key);

  final Weapon weapon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
        const Spacer(),
        Icon(
          title == 'TO HIT' ? weapon.checkDice.icon : weapon.damageDice.icon,
          size: 20,
        ),
        const SizedBox(width: 5),
        const Text(
          '+',
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(width: 5),
        Text(
          title == 'TO HIT' ? '${weapon.range}' : '${weapon.damage}',
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
