import 'package:dnd_app/data/data.dart';
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                rolls.length > 1
                    ? Text(
                        rolls.join('\n'),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      )
                    : const SizedBox.shrink(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          roll = widget.dice.roll();
                          rolls.add(roll);
                        });
                      },
                      child: const Text('Roll'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 120,
                          width: 110,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                widget.dice.img,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              roll == 0 ? '' : roll.toString(),
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          )),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          rolls.clear();
                          roll = 0;
                        });
                      },
                      child: const Text('Clear'),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
