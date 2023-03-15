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
  bool _rerolling = false;

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
                : _rerolling
                    ? const Center(
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.black,
                          ),
                        ),
                      )
                    : widget.weapon.quantityOfDices == 1
                        ? SumRollRow(
                            modifier: modifier,
                            roll: roll,
                          )
                        : SumRollsRow(
                            modifier: modifier,
                            rolls: rolls,
                          ),
            rolls.isEmpty ? const SizedBox.shrink() : const Divider(),
            rolls.isEmpty
                ? const SizedBox.shrink()
                : Wrap(
                    alignment: WrapAlignment.center,
                    children: rolls
                        .map(
                          (roll) => InkWell(
                            onTap: () {
                              dice == d20 || widget.weapon.quantityOfDices == 1
                                  ? null
                                  : setState(() {
                                      _rerolling = true;
                                      int newRoll = dice.roll();
                                      rolls[rolls.indexOf(roll)] = newRoll;
                                      // after rerolling, wait 1 second and set _rerolling to false
                                      Future.delayed(const Duration(seconds: 1),
                                          () {
                                        setState(() {
                                          _rerolling = false;
                                        });
                                      });
                                    });
                            },
                            child: Chip(
                              backgroundColor: (roll == 1)
                                  ? lowestDiceColor
                                  : (roll == widget.dice.sides)
                                      ? highestDiceColor
                                      : Colors.black,
                              label: Text(
                                '$roll',
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
            DiceButton(
              dice: dice,
              onPressed: () {
                _rollAndAddToRolls(widget.weapon, modifier);
              },
            )
          ],
        ),
      ),
    );
  }

  void _rollAndAddToRolls(Weapon weapon, int modifier) {
    setState(() {
      rolls.clear();
      if (weapon.quantityOfDices == 1) {
        roll = weapon.damageDice.roll();
        rolls.add(roll);
      } else {
        for (int i = 0; i < weapon.quantityOfDices; i++) {
          roll = weapon.damageDice.roll();
          rolls.add(roll);
        }
      }
    });
  }
}
