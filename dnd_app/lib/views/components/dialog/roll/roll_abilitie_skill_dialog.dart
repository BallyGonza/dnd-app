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
                      ),
                    ),
                  )
                : Column(
                    children: [
                      const Divider(),
                      SumRow(
                        roll: roll,
                        modifier: widget.modifier,
                      ),
                      const Divider(),
                      rolls.isEmpty
                          ? const SizedBox()
                          : ListOfRolls(
                              rolls: rolls,
                              dice: d20,
                              modifier: widget.modifier,
                            )
                    ],
                  ),
            DiceButton(
              dice: d20,
              onPressed: () {
                _rollAndAddToRolls();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _rollAndAddToRolls() {
    return setState(() {
      roll = d20.roll();
      rolls.add(roll + widget.modifier);
    });
  }
}
