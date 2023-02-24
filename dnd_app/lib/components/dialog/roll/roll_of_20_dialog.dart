import 'package:dnd_app/components/components.dart';
import 'package:dnd_app/models/models.dart';
import 'package:flutter/material.dart';

class RollDialog extends StatefulWidget {
  final String name;
  final int modifier;

  const RollDialog({Key? key, required this.name, required this.modifier})
      : super(key: key);

  @override
  State<RollDialog> createState() => _RollDialogState();
}

class _RollDialogState extends State<RollDialog> {
  set roll(int roll) {
    setState(() {
      roll = roll;
    });
  }

  @override
  Widget build(BuildContext context) {
    int roll = d20.roll();

    return AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceBetween,
      title: Text(
        widget.name,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Image of the dice
                Image(image: AssetImage(d20.img), height: 30, width: 30),
                // Text of the roll
                Text(
                  '$roll',
                  style: TextStyle(
                    fontSize: 20,
                    color: (roll == 1)
                        ? Colors.blue
                        : (roll == 20)
                            ? Colors.red
                            : Colors.black,
                  ),
                ),

                const SizedBox(width: 10),

                // If the modifier is greater than 0, display an add icon
                Icon(
                  widget.modifier > 0 ? Icons.add : Icons.remove,
                  size: 20,
                ),

                const SizedBox(width: 10),

                // Display the modifier
                Text(
                  '${widget.modifier.abs()}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(width: 10),

                // Arrow icon
                const Icon(
                  Icons.arrow_forward,
                  size: 20,
                ),

                const SizedBox(width: 10),

                // Total
                Text(
                  '${roll + widget.modifier}',
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
