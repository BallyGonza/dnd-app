import 'package:dnd_app/data/data.dart';

class Pet {
  final String name;
  final String race;
  final String img;
  final String profileImg;
  final int armor;
  final int speed;
  HealthPoints healthPoints;
  final List<Ability> abilities;
  final List<SavingThrow> savingThrows;
  final List<Weapon> weapons;
  final List<Trait> traits;
  final List<Skill> allSkills;
  final String favoredEnemy;
  final String favoredTerrain;

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
    required this.favoredEnemy,
    required this.favoredTerrain,
  });
}
