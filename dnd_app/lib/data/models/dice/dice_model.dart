import 'dart:math';
import 'package:hive/hive.dart';

part 'dice_model.g.dart';

@HiveType(typeId: 2)
class Dice {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int sides;
  @HiveField(2)
  final String img;

  Dice({
    required this.name,
    required this.sides,
    required this.img,
  });

  int roll() {
    return Random().nextInt(sides) + 1;
  }
}
