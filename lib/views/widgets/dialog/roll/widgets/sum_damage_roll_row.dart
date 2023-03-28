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

  final Weapon weapon;
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
          weapon.range;
    } else {
      totalDamage = damageRolls.reduce((value, element) => value + element) +
          plusDamageRolls.reduce((value, element) => value + element) +
          weapon.range;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    weapon.quantityOfDices > 1
                        ? Text(
                            '${weapon.quantityOfDices}d',
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
                Text(
                  damageRolls
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
          PlusMinusIcon(modifier: weapon.range),
          Text(
            '${weapon.range.abs()}',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
            ),
          ),
          const FaIcon(FontAwesomeIcons.arrowRight, size: 15),
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
