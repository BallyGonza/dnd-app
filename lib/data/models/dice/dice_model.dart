import 'dart:math';

import 'package:hive/hive.dart';

part 'dice_model.g.dart';

@HiveType(typeId: 2)
class DiceModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final int sides;
  @HiveField(3)
  final String img;

  DiceModel({
    required this.id,
    required this.name,
    required this.sides,
    required this.img,
  });

  int roll() {
    return Random().nextInt(sides) + 1;
  }
}
