import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class RollHitDamageDiceDialog extends StatefulWidget {
  final Weapon weapon;
  final Dice dice;

  const RollHitDamageDiceDialog(
      {Key? key, required this.weapon, required this.dice})
      : super(key: key);

  @override
  State<RollHitDamageDiceDialog> createState() => _RollDamageDiceDialogState();
}

class _RollDamageDiceDialogState extends State<RollHitDamageDiceDialog> {
  int _toHitRoll = 0;
  int _damageRoll = 0;
  int _trashRoll = 0;
  late List<int> _toHitRolls;
  late List<int> _damageRolls;
  late bool _advantage;
  late bool _disadvantage;
  bool _rerolling = false;

  @override
  void initState() {
    _damageRolls = [];
    _toHitRolls = [];
    _advantage = false;
    _disadvantage = false;
    _toHitRolls.clear();
    _damageRolls.clear();
    super.initState();
  }

  @override
  void dispose() {
    _damageRolls.clear();
    _toHitRolls.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Dice dice = widget.weapon.damageDice;
    final int modifier = widget.weapon.damage;
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceBetween,
      content: SingleChildScrollView(
        child: SizedBox(
          width: 500,
          child: ListBody(
            children: <Widget>[
              ListTile(
                title: Text(
                  widget.weapon.name,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _damageRoll == 0
                  ? const SizedBox.shrink()
                  : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SumRollRow(
                            modifier: widget.weapon.range,
                            roll: _toHitRoll,
                            thrashRoll: _trashRoll,
                            dice: d20,
                          ),
                        ),
                        _rerolling
                            ? const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 17,
                                  width: 16,
                                  child: CircularProgressIndicator(
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SumDamageRollsRow(
                                  dice: widget.weapon.damageDice,
                                  toHitRoll: _toHitRoll,
                                  modifier: modifier,
                                  rolls: _damageRolls,
                                ),
                              ),
                      ],
                    ),
              _damageRolls.isEmpty
                  ? const SizedBox.shrink()
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: _damageRolls
                              .map(
                                (roll) => InkWell(
                                  onTap: () {
                                    dice == d20 ||
                                            widget.weapon.quantityOfDices == 1
                                        ? null
                                        : setState(() {
                                            _rerolling = true;
                                            int newRoll = dice.roll();
                                            _damageRolls[_damageRolls
                                                .indexOf(roll)] = newRoll;
                                            Future.delayed(
                                                const Duration(seconds: 1), () {
                                              setState(() {
                                                _rerolling = false;
                                              });
                                            });
                                          });
                                  },
                                  child: Chip(
                                    backgroundColor: (roll == 1)
                                        ? lowestDiceColor
                                        : (roll == widget.dice.sides)
                                            ? highestDiceColor
                                            : Colors.black,
                                    label: Text(
                                      '$roll',
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
              SizedBox(
                height: 40,
                child: CheckboxListTile(
                  checkboxShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  activeColor: Colors.black,
                  value: _advantage,
                  onChanged: (value) {
                    setState(() {
                      _advantage = value!;
                      _disadvantage = false;
                    });
                  },
                  title: const Text("Ventaja"),
                ),
              ),
              SizedBox(
                height: 40,
                child: CheckboxListTile(
                  activeColor: Colors.black,
                  checkboxShape: const RoundedRectangleBorder(
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
                  title: const Text("Desventaja"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              WeaponButton(
                weapon: widget.weapon,
                onPressed: () {
                  _rollAndAddToRolls(widget.weapon, modifier);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _rollAndAddToRolls(Weapon weapon, int modifier) {
    setState(() {
      _damageRolls.clear();
      _toHitRolls.clear();
      _trashRoll = 0;

      _toHitRoll = d20.roll();
      _toHitRolls.add(_toHitRoll);

      if (_advantage) {
        _toHitRolls.add(d20.roll());
        _toHitRoll = _toHitRolls.reduce((a, b) => a < b ? a : b);
        _trashRoll = _toHitRoll;
        _toHitRoll = _toHitRolls.reduce((a, b) => a > b ? a : b);
      } else if (_disadvantage) {
        _toHitRolls.add(d20.roll());
        _toHitRoll = _toHitRolls.reduce((a, b) => a > b ? a : b);
        _trashRoll = _toHitRoll;
        _toHitRoll = _toHitRolls.reduce((a, b) => a < b ? a : b);
      }

      for (int i = 0; i < weapon.quantityOfDices; i++) {
        _damageRoll = weapon.damageDice.roll();
        _damageRolls.add(_damageRoll);
      }
    });
  }
}
