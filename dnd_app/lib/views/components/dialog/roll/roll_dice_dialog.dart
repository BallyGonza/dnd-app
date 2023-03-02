import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class RollDiceDialog extends StatefulWidget {
  final Dice dice;

  const RollDiceDialog({Key? key, required this.dice}) : super(key: key);

  @override
  State<RollDiceDialog> createState() => _RollDiceDialogState();
}

class _RollDiceDialogState extends State<RollDiceDialog> {
  late int roll;
  List<int> rolls = [];
  @override
  void initState() {
    rolls.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Dice dice = widget.dice;
    return AlertDialog(
        actionsAlignment: MainAxisAlignment.spaceBetween,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              ListTile(
                title: Text(
                  dice.name.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Image(
                  image: AssetImage(dice.img),
                  height: 30,
                  width: 30,
                ),
              ),
              rolls.isEmpty
                  ? const SizedBox()
                  : Center(
                      child: RollText(
                      roll: roll,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    )),
              rolls.isEmpty ? const SizedBox.shrink() : const Divider(),
              rolls.isEmpty
                  ? const Center(
                      child: Text('Roll the dice!',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    )
                  : Wrap(
                      alignment: WrapAlignment.center,
                      children: rolls
                          .map(
                            (roll) => Chip(
                              label: Text(
                                '$roll',
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              backgroundColor: roll == dice.sides
                                  ? highestDiceColor
                                  : roll == 1
                                      ? lowestDiceColor
                                      : Colors.black,
                            ),
                          )
                          .toList(),
                    ),
              rolls.isEmpty ? const SizedBox.shrink() : const Divider(),
              DiceButton(
                dice: dice,
                onPressed: () {
                  _rollAndAddToRolls(dice);
                },
              ),
            ],
          ),
        ));
  }

  void _rollAndAddToRolls(Dice dice) {
    return setState(() {
      roll = dice.roll();
      rolls.add(roll);
    });
  }
}
