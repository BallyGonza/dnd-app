import 'package:dnd_app/data/data.dart';
import 'package:hive/hive.dart';

part 'character_model.g.dart';

@HiveType(typeId: 0)
class Character {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String lastName;
  @HiveField(3)
  final String img;
  @HiveField(4)
  final String profileImg;
  @HiveField(5)
  final String banner;
  @HiveField(6)
  final String race;
  @HiveField(7)
  final List<String> classes;
  @HiveField(8)
  final int level;
  @HiveField(9)
  final int armor;
  @HiveField(10)
  final int initiative;
  @HiveField(11)
  final int speed;
  @HiveField(12)
  final int passivePerception;
  @HiveField(13)
  final Dice hitDice;
  @HiveField(14)
  HealthPoints healthPoints;
  @HiveField(15)
  final List<Ability> abilities;
  @HiveField(16)
  final List<Skill> skills;
  @HiveField(17)
  final List<SavingThrow> savingThrows;
  @HiveField(18)
  final List<Weapon> weapons;
  @HiveField(19)
  final String languages;
  @HiveField(20)
  final List<Trait> traits;
  @HiveField(21)
  final List<Spell> spells;
  @HiveField(22)
  final List<Background> background;
  @HiveField(23)
  final String backstory;
  @HiveField(24)
  final List<Pet> pet;
  @HiveField(25)
  List<Note> notes;
  @HiveField(26)
  final String favoredEnemy;
  @HiveField(27)
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
    required this.notes,
    required this.favoredEnemy,
    required this.favoredTerrain,
  });
}
