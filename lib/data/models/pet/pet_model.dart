import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:dnd_app/data/data.dart';

part 'pet_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 5)
class Pet {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String race;
  @HiveField(2)
  final String img;
  @HiveField(3)
  final String profileImg;
  @HiveField(4)
  final int armor;
  @HiveField(5)
  final int speed;
  @HiveField(6)
  HealthPoints healthPoints;
  @HiveField(7)
  final List<Ability> abilities;
  @HiveField(8)
  final List<SavingThrow> savingThrows;
  @HiveField(9)
  final List<Weapon> weapons;
  @HiveField(10)
  final List<Trait> traits;
  @HiveField(11)
  final List<Skill> allSkills;

  Pet({
    required this.name,
    required this.race,
    required this.img,
    required this.profileImg,
    required this.armor,
    required this.speed,
    required this.healthPoints,
    required this.abilities,
    required this.savingThrows,
    required this.weapons,
    required this.traits,
    required this.allSkills,
  });

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  Map<String, dynamic> toJson() => _$PetToJson(this);
}
