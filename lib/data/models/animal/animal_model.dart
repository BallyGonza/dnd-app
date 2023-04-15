import 'package:hive/hive.dart';
import 'package:dnd_app/data/data.dart';

part 'animal_model.g.dart';

@HiveType(typeId: 5)
class AnimalModel {
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
  final int? climb;
  @HiveField(7)
  final int? fly;
  @HiveField(8)
  HealthPointsModel healthPoints;
  @HiveField(9)
  final List<AbilityModel> abilities;
  @HiveField(10)
  final List<SavingThrowModel> savingThrows;
  @HiveField(11)
  final List<WeaponModel> weapons;
  @HiveField(12)
  final List<TraitModel> traits;
  @HiveField(13)
  final List<SkillModel> skills;

  AnimalModel({
    required this.name,
    required this.race,
    required this.img,
    required this.profileImg,
    required this.armor,
    required this.speed,
    this.climb,
    this.fly,
    required this.healthPoints,
    required this.abilities,
    required this.savingThrows,
    required this.weapons,
    required this.traits,
    required this.skills,
  });
}
