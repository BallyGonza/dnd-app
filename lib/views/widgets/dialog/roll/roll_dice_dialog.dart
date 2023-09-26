import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class RollDiceDialog extends StatefulWidget {
  const RollDiceDialog({
    required this.dice,
    super.key,
  });
  final DiceModel dice;

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
    final dice = widget.dice;
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
            if (rolls.isEmpty)
              const SizedBox()
            else
              Center(
                child: Text(
                  roll.toString(),
                  style: TextStyle(
                    fontSize: 60,
                    color: roll == dice.sides
                        ? highestDiceColor
                        : roll == 1
                            ? lowestDiceColor
                            : Colors.black,
                  ),
                ),
              ),
            if (rolls.isEmpty) const SizedBox.shrink() else const Divider(),
            if (rolls.isEmpty)
              const SizedBox.shrink()
            else
              Wrap(
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
            if (rolls.isEmpty) const SizedBox.shrink() else const Divider(),
            DiceButton(
              dice: dice,
              onPressed: () {
                _rollAndAddToRolls(dice);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _rollAndAddToRolls(DiceModel dice) {
    return setState(() {
      roll = dice.roll();
      rolls.add(roll);
    });
  }
}
