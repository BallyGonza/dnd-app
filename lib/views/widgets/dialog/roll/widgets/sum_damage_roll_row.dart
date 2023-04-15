import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SumDamageRollsRow extends StatelessWidget {
  SumDamageRollsRow({
    super.key,
    required this.weapon,
    required this.damageRolls,
    required this.plusDamageRolls,
    required this.toHitRoll,
  });

  final WeaponModel weapon;
  final int toHitRoll;
  final List<int> damageRolls;
  final List<int> plusDamageRolls;
  int totalDamage = 0;

  @override
  Widget build(BuildContext context) {
    if (toHitRoll == 20) {
      for (int i = 0; i < damageRolls.length; i++) {
        damageRolls[i] = damageRolls[i] * 2;
      }
    }

    if (plusDamageRolls.isEmpty) {
      totalDamage = damageRolls.reduce((value, element) => value + element) +
          weapon.damage;
    } else {
      totalDamage = damageRolls.reduce((value, element) => value + element) +
          plusDamageRolls.reduce((value, element) => value + element) +
          weapon.damage;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              weapon.quantityOfDamageDices > 1
                  ? Text(
                      '${weapon.quantityOfDamageDices}d',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  : const SizedBox.shrink(),
              Image.asset(
                weapon.damageDice.img,
                width: 20,
                height: 20,
              ),
            ],
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            damageRolls.reduce((value, element) => value + element).toString(),
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
          plusDamageRolls.isNotEmpty
              ? SizedBox(
                  width: 65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.plus,
                        color: Colors.green,
                        size: 15,
                      ),
                      Image.asset(
                        weapon.plusDamageDice!.img,
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        plusDamageRolls
                            .reduce((value, element) => value + element)
                            .toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox.shrink(),
          const SizedBox(
            width: 4,
          ),
          PlusMinusIcon(modifier: weapon.damage),
          const SizedBox(
            width: 4,
          ),
          Text(
            '${weapon.damage.abs()}',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          const FaIcon(FontAwesomeIcons.arrowRight, size: 15),
          const SizedBox(
            width: 4,
          ),
          Text(
            '$totalDamage',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
