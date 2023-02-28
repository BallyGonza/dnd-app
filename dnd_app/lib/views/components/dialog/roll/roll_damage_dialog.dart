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
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceBetween,
      title: Row(
        children: [
          Text(
            'Damage [${widget.weapon.damageDice.name.toUpperCase()}]',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Image(
            image: AssetImage(widget.weapon.img),
            height: 30,
            width: 30,
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            const Divider(),
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
                : Row(
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
                  ),
            const Divider(),
            rolls.isEmpty
                ? const SizedBox.shrink()
                : Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 5,
                    children: rolls
                        .map(
                          (e) => Chip(
                            label: Text(
                              '$e',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: (e == 1 + widget.weapon.damage)
                                ? Colors.blue
                                : (e ==
                                        widget.weapon.damageDice.sides +
                                            widget.weapon.damage)
                                    ? Colors.red
                                    : Colors.black,
                          ),
                        )
                        .toList(),
                  ),
            DiceButton(
              color: Colors.black,
              img: widget.weapon.damageDice.img,
              onPressed: () {
                setState(() {
                  roll = widget.weapon.damageDice.roll();
                  rolls.add(roll + widget.weapon.damage);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
