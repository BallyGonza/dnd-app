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
      child: InkWell(
        onTap: () => showDialog(
          context: context,
          builder: (context) => RollHitDamageDiceDialog(
            weapon: weapon,
            dice: weapon.damageDice,
          ),
        ),
        child: Stack(
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      weapon.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: Text(
                      weapon.description,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 10, left: 15, right: 15),
                    child: Column(
                      children: [
                        WeaponThrowRow(
                          title: 'TO HIT',
                          weapon: weapon,
                        ),
                        WeaponThrowRow(
                          title: 'DAMAGE',
                          weapon: weapon,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 15,
                  right: 15,
                  left: MediaQuery.of(context).size.width * 0.58),
              height: 145,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(weapon.img),
                  fit: BoxFit.fitWidth,
                  opacity: 0.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
