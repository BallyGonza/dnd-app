import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class WeaponThrowRow extends StatelessWidget {
  const WeaponThrowRow({
    Key? key,
    required this.weapon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final Weapon weapon;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
            const Spacer(),
            weapon.quantityOfDices > 1 && title == 'DAMAGE'
                ? Text(
                    '${weapon.quantityOfDices}d',
                    style: const TextStyle(fontSize: 20),
                  )
                : const SizedBox(),
            Image.asset(
              title == 'TO HIT' ? weapon.checkDice.img : weapon.damageDice.img,
              width: 20,
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
        ),
      ),
    );
  }
}
