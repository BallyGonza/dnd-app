import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class PetWeaponCard extends StatefulWidget {
  final Weapon weapon;
  const PetWeaponCard({Key? key, required this.weapon}) : super(key: key);

  @override
  State<PetWeaponCard> createState() => _PetWeaponCardState();
}

class _PetWeaponCardState extends State<PetWeaponCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
      child: ExpansionTile(
        leading: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.weapon.img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          widget.weapon.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        childrenPadding:
            const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => RollAbilitieSkillDialog(
                    name:
                        'To Hit [${widget.weapon.checkDice.name.toUpperCase()}]',
                    modifier: widget.weapon.range,
                  ),
                );
              },
              child: Row(
                children: [
                  const Text('TO HIT', style: TextStyle(fontSize: 20)),
                  Expanded(child: Container()),
                  Image.asset(
                    widget.weapon.checkDice.img,
                    height: 20,
                  ),
                  const SizedBox(width: 5),
                  const Text('+', style: TextStyle(fontSize: 15)),
                  const SizedBox(width: 5),
                  Text(
                    '${widget.weapon.range}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => showDialog(
                context: context,
                builder: (context) => RollDamageDiceDialog(
                  weapon: widget.weapon,
                  dice: widget.weapon.damageDice,
                ),
              ),
              child: Row(
                children: [
                  const Text('DAMAGE', style: TextStyle(fontSize: 20)),
                  Expanded(child: Container()),
                  // icon of the dice
                  Image.asset(
                    widget.weapon.damageDice.img,
                    height: 20,
                  ),
                  const SizedBox(width: 5),
                  const Text('+', style: TextStyle(fontSize: 15)),
                  const SizedBox(width: 5),

                  Text(
                    '${widget.weapon.damage}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
