import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SumRollWeaponRow extends StatelessWidget {
  const SumRollWeaponRow({
    super.key,
    required this.weapon,
    required this.roll,
    required this.thrashRoll,
  });

  final WeaponModel weapon;
  final int roll;
  final int thrashRoll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                weapon.checkDice.img,
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 10),
              RollText(
                roll: roll,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Row(
                children: [
                  thrashRoll != 0
                      ? Opacity(
                          opacity: 0.3,
                          child: Text(
                            ' ($thrashRoll)',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
              const SizedBox(width: 10),
              PlusMinusIcon(modifier: weapon.range),
              const SizedBox(width: 10),
              Text(
                '${weapon.range.abs()}',
                style: TextStyle(
                  fontSize: 20,
                  color: weapon.range < 0
                      ? Colors.red
                      : weapon.range > 0
                          ? Colors.green
                          : Colors.grey,
                ),
              ),
              const SizedBox(width: 10),
              const FaIcon(FontAwesomeIcons.arrowRight, size: 15),
              const SizedBox(width: 10),
              Text(
                '${roll + weapon.range}',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
