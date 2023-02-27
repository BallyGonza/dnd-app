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
  set roll(int roll) {
    setState(() {
      roll = roll;
    });
  }

  @override
  Widget build(BuildContext context) {
    int roll = widget.weapon.damageDice.roll();

    return AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceBetween,
      title: Row(
        children: [
          const Text(
            'DAMAGE',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Image(
            image: AssetImage(widget.weapon.damageDice.img),
            height: 30,
            width: 30,
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$roll',
                  style: TextStyle(
                    fontSize: 20,
                    color: (roll == 1)
                        ? Colors.blue
                        : (roll == widget.weapon.damageDice.sides)
                            ? Colors.red
                            : Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.green,
                ),
                const SizedBox(width: 10),
                Text(
                  '${widget.weapon.damage}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_forward,
                  size: 20,
                ),
                const SizedBox(width: 10),
                Text(
                  '${roll + widget.weapon.damage}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      actions: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ButtonReRoll(
                onPressed: () {
                  setState(() {
                    roll = d20.roll();
                  });
                },
              ),
              ButtonCancel(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ])
      ],
    );
  }
}
