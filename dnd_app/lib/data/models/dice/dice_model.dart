import 'dart:math';

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
