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
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              ListTile(
                title: Text(
                  widget.dice.name.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Image(
                  image: AssetImage(widget.dice.img),
                  height: 30,
                  width: 30,
                ),
              ),
              roll == 0
                  ? const SizedBox()
                  : Center(
                      child: Text(
                        '$roll',
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: roll == widget.dice.sides
                              ? Colors.red
                              : roll == 1
                                  ? Colors.blue
                                  : Colors.black,
                        ),
                      ),
                    ),
              roll == 0 ? const SizedBox.shrink() : const Divider(),
              roll == 0
                  ? const Center(
                      child: Text('Roll the dice!',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                    )
                  : Wrap(
                      alignment: WrapAlignment.center,
                      children: rolls
                          .map((e) => Chip(
                                label: Text(
                                  '$e',
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                backgroundColor: e == widget.dice.sides
                                    ? Colors.red
                                    : e == 1
                                        ? Colors.blue
                                        : Colors.black,
                              ))
                          .toList()),
              roll == 0 ? const SizedBox.shrink() : const Divider(),
              DiceButton(
                img: widget.dice.img,
                color: Colors.black,
                onPressed: () {
                  setState(() {
                    roll = widget.dice.roll();
                    rolls.add(roll);
                  });
                },
              ),
            ],
          ),
        ));
  }
}
