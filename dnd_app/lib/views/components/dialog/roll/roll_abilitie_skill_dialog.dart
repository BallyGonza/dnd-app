import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class RollAbilitieSkillDialog extends StatefulWidget {
  const RollAbilitieSkillDialog(
      {Key? key, required this.name, required this.modifier})
      : super(key: key);

  final String name;
  final int modifier;

  @override
  State<RollAbilitieSkillDialog> createState() =>
      _RollAbilitieSkillDialogState();
}

class _RollAbilitieSkillDialogState extends State<RollAbilitieSkillDialog> {
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
      title: Row(
        children: [
          Text(
            widget.name,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Image(image: AssetImage(d20.img), height: 30, width: 30),
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
                        : (roll == 20)
                            ? Colors.red
                            : Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                Icon(
                  widget.modifier > 0 ? Icons.add : Icons.remove,
                  size: 20,
                  color: widget.modifier > 0 ? Colors.green : Colors.red,
                ),
                const SizedBox(width: 10),
                Text(
                  '${widget.modifier.abs()}',
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
                  '${roll + widget.modifier}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            roll == 20 && widget.name == 'TO HIT'
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(height: 20),
                      Text('CRITICAL',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                          )),
                    ],
                  )
                : const SizedBox.shrink(),
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
