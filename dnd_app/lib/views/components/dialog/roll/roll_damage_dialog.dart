import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class RollDamageDiceDialog extends StatefulWidget {
  final Weapon weapon;
  final Dice dice;

  const RollDamageDiceDialog(
      {Key? key, required this.weapon, required this.dice})
      : super(key: key);

  @override
  State<RollDamageDiceDialog> createState() => _RollDamageDiceDialogState();
}

class _RollDamageDiceDialogState extends State<RollDamageDiceDialog> {
  int roll = 0;
  List<int> rolls = [];

  @override
  void initState() {
    rolls.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Dice dice = widget.weapon.damageDice;
    final int modifier = widget.weapon.damage;
    final String weapongImg = widget.weapon.img;
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceBetween,
      title: Row(
        children: [
          Text(
            'Damage [${dice.name.toUpperCase()}]',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const Spacer(),
          Image(
            image: AssetImage(weapongImg),
            height: 30,
            width: 30,
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            rolls.isEmpty ? const SizedBox.shrink() : const Divider(),
            roll == 0
                ? const Center(
                    child: Text(
                      'Roll the dice!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  )
                : SumRow(
                    modifier: modifier,
                    roll: roll,
                  ),
            rolls.isEmpty ? const SizedBox.shrink() : const Divider(),
            rolls.isEmpty
                ? const SizedBox.shrink()
                : ListOfRolls(
                    rolls: rolls,
                    dice: dice,
                    modifier: modifier,
                  ),
            DiceButton(
              dice: dice,
              onPressed: () {
                _rollAndAddToRolls(dice, modifier);
              },
            )
          ],
        ),
      ),
    );
  }

  void _rollAndAddToRolls(Dice dice, int modifier) {
    return setState(() {
      roll = dice.roll();
      rolls.add(roll + modifier);
    });
  }
}
