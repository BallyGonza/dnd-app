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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  weapon.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Column(
                children: [
                  WeaponThrowRow(
                    title: 'TO HIT',
                    weapon: weapon,
                    onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          RollAbilitieSkillDialog(
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
          ),
          Container(
            margin: EdgeInsets.only(
                top: 15,
                right: 15,
                left: MediaQuery.of(context).size.width * 0.6),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(weapon.img),
                fit: BoxFit.fitHeight,
                opacity: 0.1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
