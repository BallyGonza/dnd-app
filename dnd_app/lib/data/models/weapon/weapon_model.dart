import 'package:dnd_app/data/data.dart';
import 'package:hive/hive.dart';

part 'weapon_model.g.dart';

@HiveType(typeId: 10)
class Weapon {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final int damage;
  @HiveField(3)
  final int quantityOfDices;
  @HiveField(4)
  final Dice damageDice;
  @HiveField(5)
  final Dice checkDice;
  @HiveField(6)
  final int range;
  @HiveField(7)
  final String img;

  Weapon({
    required this.id,
    required this.name,
    required this.damage,
    required this.quantityOfDices,
    required this.damageDice,
    required this.checkDice,
    required this.range,
    required this.img,
  });
}
