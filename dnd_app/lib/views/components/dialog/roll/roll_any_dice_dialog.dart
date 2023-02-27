import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class RollDiceDialog extends StatefulWidget {
  final Dice dice;

  const RollDiceDialog({Key? key, required this.dice}) : super(key: key);

  @override
  State<RollDiceDialog> createState() => _RollDiceDialogState();
}

class _RollDiceDialogState extends State<RollDiceDialog> {
  get dice => widget.dice;

  set roll(int roll) {
    setState(() {
      roll = roll;
    });
  }

  @override
  Widget build(BuildContext context) {
    int roll = dice.roll();
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceBetween,
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$roll',
                  style: TextStyle(
                    fontSize: 50,
                    color: (roll == 1)
                        ? Colors.blue
                        : (roll == widget.dice.sides)
                            ? Colors.red
                            : Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      roll = dice.roll();
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Image(
                      image: AssetImage(widget.dice.img),
                      height: 50,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
