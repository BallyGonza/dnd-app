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
  List<int> rolls = [];
  int roll = 0;

  @override
  void initState() {
    rolls.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: ListTile(
        title: Text(
          widget.name.toUpperCase(),
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Image(
          image: AssetImage(d20.img),
          height: 30,
          width: 30,
        ),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
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
                : Column(
                    children: [
                      const Divider(),
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
                            color:
                                widget.modifier > 0 ? Colors.green : Colors.red,
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
                      const Divider(),
                      rolls.isEmpty
                          ? const SizedBox()
                          : Wrap(
                              children: rolls
                                  .map(
                                    (e) => Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Chip(
                                        backgroundColor: (e == 13)
                                            ? Colors.blue
                                            : (e == 32)
                                                ? Colors.red
                                                : Colors.black,
                                        label: Text(
                                          '$e',
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                    ],
                  ),
            DiceButton(
              img: d20.img,
              color: Colors.black,
              onPressed: () {
                setState(() {
                  roll = d20.roll();
                  rolls.add(roll + widget.modifier);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
