import 'package:dnd_app/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'weapon_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 10)
class Weapon {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final int damage;
  @HiveField(4)
  final int quantityOfDices;
  @HiveField(5)
  final Dice damageDice;
  @HiveField(6)
  final Dice? plusDamageDice;
  @HiveField(7)
  final Dice checkDice;
  @HiveField(8)
  final int range;
  @HiveField(9)
  final String img;

  Weapon({
    required this.id,
    required this.name,
    required this.description,
    required this.damage,
    required this.quantityOfDices,
    required this.damageDice,
    this.plusDamageDice,
    required this.checkDice,
    required this.range,
    required this.img,
  });

  factory Weapon.fromJson(Map<String, dynamic> json) => _$WeaponFromJson(json);

  Map<String, dynamic> toJson() => _$WeaponToJson(this);
}
