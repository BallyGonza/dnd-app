import 'package:dnd_app/data/data.dart';

import 'package:hive/hive.dart';

part 'weapon_model.g.dart';

@HiveType(typeId: 10)
class WeaponModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final int damage;
  @HiveField(4)
  final int quantityOfDamageDices;
  @HiveField(5)
  final DiceModel damageDice;
  @HiveField(6)
  final DiceModel? plusDamageDice;
  @HiveField(7)
  final int? quantityOfPlusDamageDices;
  @HiveField(8)
  final DiceModel checkDice;
  @HiveField(9)
  final int range;
  @HiveField(10)
  final String img;

  WeaponModel({
    required this.id,
    required this.name,
    required this.description,
    required this.damage,
    required this.quantityOfDamageDices,
    required this.damageDice,
    this.plusDamageDice,
    this.quantityOfPlusDamageDices,
    required this.checkDice,
    required this.range,
    required this.img,
  });
}
