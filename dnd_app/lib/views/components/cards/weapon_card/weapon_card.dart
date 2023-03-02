import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class WeaponCard extends StatelessWidget {
  final Weapon weapon;
  const WeaponCard({Key? key, required this.weapon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
      child: Card(
        child: ExpansionTile(
          leading: Image.asset(
            weapon.img,
            width: 30,
            height: 30,
          ),
          title: Text(
            weapon.name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          childrenPadding:
              const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
          children: <Widget>[
            WeaponThrowRow(
              title: 'TO HIT',
              weapon: weapon,
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => RollAbilitieSkillDialog(
                  name: 'To Hit [${d20.name.toUpperCase()}]',
                  modifier: weapon.range,
                ),
              ),
            ),
            WeaponThrowRow(
              title: 'DAMAGE',
              weapon: weapon,
              onTap: () => showDialog(
                context: context,
                builder: (context) => RollDamageDiceDialog(
                  weapon: weapon,
                  dice: weapon.damageDice,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
