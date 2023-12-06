import 'package:dnd_app/data/data.dart';
import 'package:hive/hive.dart';

part 'animal_model.g.dart';

@HiveType(typeId: 5)
class AnimalModel {
  AnimalModel({
    required this.id,
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
    required this.skills,
    this.climb,
    this.fly,
  });
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String race;
  @HiveField(3)
  final String img;
  @HiveField(4)
  final String profileImg;
  @HiveField(5)
  final int armor;
  @HiveField(6)
  final int speed;
  @HiveField(7)
  final int? climb;
  @HiveField(8)
  final int? fly;
  @HiveField(9)
  HealthPointsModel healthPoints;
  @HiveField(10)
  final List<AbilityModel> abilities;
  @HiveField(11)
  final List<SavingThrowModel> savingThrows;
  @HiveField(12)
  final List<WeaponModel> weapons;
  @HiveField(13)
  final List<TraitModel> traits;
  @HiveField(14)
  final List<SkillModel> skills;
}
