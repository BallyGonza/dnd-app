import 'package:dnd_app/data/data.dart';
import 'package:hive/hive.dart';

part 'character_model.g.dart';

@HiveType(typeId: 0)
class CharacterModel {
  CharacterModel({
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
    required this.pets,
    required this.wildForms,
    required this.notes,
    required this.wallet,
    required this.password,
  });
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
  final DiceModel hitDice;
  @HiveField(14)
  HealthPointsModel healthPoints;
  @HiveField(15)
  final List<AbilityModel> abilities;
  @HiveField(16)
  final List<SkillModel> skills;
  @HiveField(17)
  final List<SavingThrowModel> savingThrows;
  @HiveField(18)
  final List<WeaponModel> weapons;
  @HiveField(19)
  final String languages;
  @HiveField(20)
  final List<TraitModel> traits;
  @HiveField(21)
  final List<SpellModel> spells;
  @HiveField(22)
  final List<BackgroundModel> background;
  @HiveField(23)
  final String backstory;
  @HiveField(24)
  final List<AnimalModel> pets;
  @HiveField(25)
  final List<AnimalModel> wildForms;
  @HiveField(26)
  List<Note> notes;
  @HiveField(27)
  WalletModel wallet;
  @HiveField(28)
  final String password;

  CharacterModel copyWith({required List<Note> notes}) {
    return CharacterModel(
      id: id,
      name: name,
      lastName: lastName,
      img: img,
      profileImg: profileImg,
      banner: banner,
      race: race,
      classes: classes,
      level: level,
      armor: armor,
      initiative: initiative,
      speed: speed,
      passivePerception: passivePerception,
      hitDice: hitDice,
      healthPoints: healthPoints,
      abilities: abilities,
      skills: skills,
      savingThrows: savingThrows,
      weapons: weapons,
      languages: languages,
      traits: traits,
      spells: spells,
      background: background,
      backstory: backstory,
      pets: pets,
      wildForms: wildForms,
      notes: notes,
      wallet: wallet,
      password: password,
    );
  }
}
