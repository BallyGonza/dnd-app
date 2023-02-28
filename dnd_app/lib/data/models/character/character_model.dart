import 'package:dnd_app/data/data.dart';

class Character {
  final int id;
  final String name;
  final String lastName;
  final String img;
  final String profileImg;
  final String banner;
  final String race;
  final List<String> classes;
  final int level;
  final int armor;
  final int initiative;
  final int speed;
  final int passivePerception;
  final Dice hitDice;
  HealthPoints healthPoints;
  final List<Ability> abilities;
  final List<Skill> skills;
  final List<SavingThrow> savingThrows;
  final List<Weapon> weapons;
  final String languages;
  final List<Trait> traits;
  final List<Spell> spells;
  final List<Background> background;
  final List<String> backstory;
  final List<Pet> pet;
  final String favoredEnemy;
  final String favoredTerrain;

  Character({
    required this.id,
    required this.name,
    required this.lastName,
    required this.img,
    required this.profileImg,
    required this.banner,
    required this.race,
    required this.classes,
    required this.level,
    required this.armor,
    required this.initiative,
    required this.speed,
    required this.passivePerception,
    required this.hitDice,
    required this.healthPoints,
    required this.abilities,
    required this.skills,
    required this.savingThrows,
    required this.weapons,
    required this.languages,
    required this.traits,
    required this.spells,
    required this.background,
    required this.backstory,
    required this.pet,
    required this.favoredEnemy,
    required this.favoredTerrain,
  });
}
