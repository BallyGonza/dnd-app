// ignore_for_file: lines_longer_than_80_chars

import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class RollHitDamageDiceDialog extends StatefulWidget {
  const RollHitDamageDiceDialog({
    required this.weapon,
    required this.dice,
    super.key,
  });
  final WeaponModel weapon;
  final DiceModel dice;

  @override
  State<RollHitDamageDiceDialog> createState() => _RollDamageDiceDialogState();
}

class _RollDamageDiceDialogState extends State<RollHitDamageDiceDialog> {
  int _toHitRoll = 0;
  int _damageRoll = 0;
  int _plusDamageRoll = 0;
  int _trashRoll = 0;
  late List<int> _toHitRolls;
  late List<int> _damageRolls;
  late List<int> _plusDamageRolls;
  late bool _advantage;
  late bool _disadvantage;
  bool _rerolling = false;

  @override
  void initState() {
    _damageRolls = [];
    _plusDamageRolls = [];
    _toHitRolls = [];
    _advantage = false;
    _disadvantage = false;
    _toHitRolls.clear();
    _damageRolls.clear();
    _plusDamageRolls.clear();
    super.initState();
  }

  @override
  void dispose() {
    _damageRolls.clear();
    _plusDamageRolls.clear();
    _toHitRolls.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dice = widget.weapon.damageDice;
    final modifier = widget.weapon.damage;
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceBetween,
      content: SingleChildScrollView(
        child: SizedBox(
          width: 500,
          child: ListBody(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.weapon.name,
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '${widget.weapon.quantityOfDamageDices}d${widget.weapon.damageDice.sides} ',
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        if (widget.weapon.plusDamageDice != null)
                          Text(
                            '+ 1d${widget.weapon.plusDamageDice!.sides}',
                            style: const TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        else
                          const SizedBox.shrink(),
                      ],
                    ),
                    Text(
                      widget.weapon.description,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              if (_damageRoll == 0)
                const SizedBox.shrink()
              else
                Column(
                  children: [
                    SumRollWeaponRow(
                      weapon: widget.weapon,
                      roll: _toHitRoll,
                      thrashRoll: _trashRoll,
                    ),
                    if (_rerolling)
                      const Loading()
                    else
                      SumDamageRollsRow(
                        weapon: widget.weapon,
                        toHitRoll: _toHitRoll,
                        damageRolls: _damageRolls,
                        plusDamageRolls: _plusDamageRolls,
                      ),
                  ],
                ),
              if (_damageRolls.isEmpty)
                const SizedBox.shrink()
              else
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: _rerolling
                      ? const SizedBox.shrink()
                      : Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Wrap(
                                alignment: WrapAlignment.center,
                                children: _damageRolls
                                    .map(
                                      (roll) => GestureDetector(
                                        onTap: () {
                                          _reRollDamageRoll(dice, roll);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 5,
                                          ),
                                          child: Chip(
                                            backgroundColor: (roll == 1)
                                                ? lowestDiceColor
                                                : (roll == widget.dice.sides)
                                                    ? highestDiceColor
                                                    : Colors.black,
                                            label: SizedBox(
                                              width: 40,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    widget
                                                        .weapon.damageDice.img,
                                                    color: Colors.white,
                                                    height: 20,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '$roll',
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                              if (widget.weapon.plusDamageDice != null)
                                Wrap(
                                  alignment: WrapAlignment.center,
                                  children: _plusDamageRolls
                                      .map(
                                        (roll) => GestureDetector(
                                          onTap: () {
                                            _reRollPlusDamageRoll(
                                              dice,
                                              roll,
                                            );
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 5,
                                            ),
                                            child: Chip(
                                              backgroundColor: (roll == 1)
                                                  ? lowestDiceColor
                                                  : (roll == widget.dice.sides)
                                                      ? highestDiceColor
                                                      : Colors.black,
                                              label: SizedBox(
                                                width: 40,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      widget.weapon
                                                          .plusDamageDice!.img,
                                                      color: Colors.white,
                                                      height: 20,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      '$roll',
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                )
                              else
                                const SizedBox.shrink(),
                            ],
                          ),
                        ),
                ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Ventaja',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
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
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                                Checkbox(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  activeColor: Colors.red,
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
                    WeaponButton(
                      weapon: widget.weapon,
                      onPressed: () {
                        _rollAndAddToRolls(widget.weapon, modifier);
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

  void _reRollDamageRoll(DiceModel dice, int roll) {
    dice == d20 || widget.weapon.quantityOfDamageDices == 1
        ? null
        : setState(() {
            _rerolling = true;
            final newRoll = dice.roll();
            _damageRolls[_damageRolls.indexOf(roll)] = newRoll;
            Future.delayed(const Duration(seconds: 2), () {
              setState(() {
                _rerolling = false;
              });
            });
          });
  }

  void _reRollPlusDamageRoll(DiceModel dice, int roll) {
    dice == d20 || widget.weapon.quantityOfDamageDices == 1
        ? null
        : setState(() {
            _rerolling = true;
            final newRoll = dice.roll();
            _plusDamageRolls[_plusDamageRolls.indexOf(roll)] = newRoll;
            Future.delayed(const Duration(seconds: 2), () {
              setState(() {
                _rerolling = false;
              });
            });
          });
  }

  void _rollAndAddToRolls(WeaponModel weapon, int modifier) {
    setState(() {
      _damageRolls.clear();
      _plusDamageRolls.clear();
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

      for (var i = 0; i < weapon.quantityOfDamageDices; i++) {
        _damageRoll = weapon.damageDice.roll();
        _damageRolls.add(_damageRoll);
      }

      if (weapon.plusDamageDice != null) {
        _plusDamageRoll = weapon.plusDamageDice!.roll();
        _plusDamageRolls.add(_plusDamageRoll);
      }
    });
  }
}

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(9),
      child: SizedBox(
        height: 17,
        width: 16,
        child: CircularProgressIndicator(
          color: Colors.black,
        ),
      ),
    );
  }
}
