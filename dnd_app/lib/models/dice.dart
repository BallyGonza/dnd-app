import 'dart:math';

import 'package:dnd_app/services/services.dart';
import 'package:flutter/cupertino.dart';

class Dice {
  final String name;
  final int sides;
  final IconData icon;
  final String img;

  Dice({
    required this.name,
    required this.sides,
    required this.icon,
    required this.img,
  });

  int roll() {
    return Random().nextInt(sides) + 1;
  }
}

Dice d4 = Dice(
    name: 'd4',
    sides: 4,
    icon: MyFlutterApp.d4,
    img: 'assets/images/dices/d4/d4.png');
Dice d6 = Dice(
    name: 'd6',
    sides: 6,
    icon: MyFlutterApp.d6,
    img: 'assets/images/dices/d6/d6.png');
Dice d8 = Dice(
    name: 'd8',
    sides: 8,
    icon: MyFlutterApp.d8,
    img: 'assets/images/dices/d8/d8.png');
Dice d10 = Dice(
    name: 'd10',
    sides: 10,
    icon: MyFlutterApp.d10,
    img: 'assets/images/dices/d10/d10.png');
Dice d12 = Dice(
    name: 'd12',
    sides: 12,
    icon: MyFlutterApp.d12,
    img: 'assets/images/dices/d12/d12.png');
Dice d20 = Dice(
    name: 'd20',
    sides: 20,
    icon: MyFlutterApp.d20,
    img: 'assets/images/dices/d20/d20.png');

final dices = <Dice>[
  d4,
  d6,
  d8,
  d10,
  d12,
  d20,
];
