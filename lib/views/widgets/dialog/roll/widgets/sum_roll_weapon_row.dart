import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class SumRollWeaponRow extends StatelessWidget {
  const SumRollWeaponRow({
    super.key,
    required this.weapon,
    required this.roll,
    required this.thrashRoll,
  });

  final Weapon weapon;
  final int roll;
  final int thrashRoll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            weapon.checkDice.img,
            width: 20,
            height: 20,
          ),
          const Spacer(),
          Row(
            children: <Widget>[
              Row(
                children: [
                  RollText(
                    roll: roll,
                  ),
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
              const Icon(
                Icons.arrow_forward,
                size: 20,
              ),
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
