import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class RollAbilitieSkillDialog extends StatefulWidget {
  const RollAbilitieSkillDialog({
    required this.name,
    required this.modifier,
    super.key,
  });

  final String name;
  final int modifier;

  @override
  State<RollAbilitieSkillDialog> createState() =>
      _RollAbilitieSkillDialogState();
}

class _RollAbilitieSkillDialogState extends State<RollAbilitieSkillDialog> {
  List<int> rolls = [];
  List<int> advantageRolls = [];
  int roll = 0;
  int _trashRoll = 0;
  late bool _advantage;
  late bool _disadvantage;

  @override
  void initState() {
    rolls.clear();
    advantageRolls.clear();
    _advantage = false;
    _disadvantage = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: SizedBox(
          width: 500,
          child: ListBody(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    if (rolls.isNotEmpty)
                      const SizedBox.shrink()
                    else
                      PlusMinusIcon(
                        modifier: widget.modifier,
                      ),
                    if (rolls.isNotEmpty)
                      const SizedBox.shrink()
                    else
                      Text(
                        widget.modifier.abs().toString(),
                        style: TextStyle(
                          fontSize: 22,
                          color: widget.modifier > 0
                              ? highestDiceColor
                              : widget.modifier < 0
                                  ? lowestDiceColor
                                  : Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                  ],
                ),
              ),
              if (roll == 0)
                const SizedBox.shrink()
              else
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SumRollRow(
                    roll: roll,
                    thrashRoll: _trashRoll,
                    modifier: widget.modifier,
                    dice: d20,
                  ),
                ),
              if (rolls.isEmpty)
                const SizedBox.shrink()
              else
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: rolls
                          .map(
                            (roll) => Chip(
                              backgroundColor: (roll == 1)
                                  ? lowestDiceColor
                                  : (roll == d20.sides)
                                      ? highestDiceColor
                                      : Colors.black,
                              label: Text(
                                '$roll',
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 150,
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Ventaja',
                                  style: TextStyle(color: Colors.green),
                                ),
                                Checkbox(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  activeColor: Colors.green,
                                  value: _advantage,
                                  onChanged: (value) {
                                    setState(() {
                                      _advantage = value!;
                                      _disadvantage = false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Desventaja',
                                  style: TextStyle(color: Colors.red),
                                ),
                                Checkbox(
                                  activeColor: Colors.red,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  value: _disadvantage,
                                  onChanged: (value) {
                                    setState(() {
                                      _disadvantage = value!;
                                      _advantage = false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
            ],
          ),
        ),
      ),
    );
  }

  void _rollAndAddToRolls() {
    return setState(() {
      advantageRolls.clear();

      roll = d20.roll();

      if (_advantage) {
        advantageRolls.add(roll);
        roll = d20.roll();
        advantageRolls.add(roll);
        roll = advantageRolls
            .reduce((value, element) => value > element ? value : element);
        _trashRoll = advantageRolls
            .reduce((value, element) => value < element ? value : element);
      } else if (_disadvantage) {
        advantageRolls.add(roll);
        roll = d20.roll();
        advantageRolls.add(roll);
        roll = advantageRolls
            .reduce((value, element) => value < element ? value : element);
        _trashRoll = advantageRolls
            .reduce((value, element) => value > element ? value : element);
      }

      rolls.add(roll);
    });
  }
}
