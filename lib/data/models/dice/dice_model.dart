import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'dice_model.g.dart';

@JsonSerializable()
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

  factory Dice.fromJson(Map<String, dynamic> json) => _$DiceFromJson(json);

  Map<String, dynamic> toJson() => _$DiceToJson(this);
}
