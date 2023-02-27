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

Pet ghost = Pet(
  name: 'Ghost',
  race: 'Blink Dog',
  img: 'assets/images/animals/blink_dog/blink_dog.jpeg',
  profileImg: 'assets/images/animals/blink_dog/blink_dog_profile.jpeg',
  armor: 16,
  speed: 8,
  healthPoints: HealthPoints(
    current: 35,
    max: 35,
  ),
  abilities: [
    Ability(name: 'Strength', score: 12, modifier: 1),
    Ability(name: 'Dexterity', score: 17, modifier: 3),
    Ability(name: 'Constitution', score: 12, modifier: 1),
    Ability(name: 'Intelligence', score: 10, modifier: 0),
    Ability(name: 'Wisdom', score: 13, modifier: 1),
    Ability(name: 'Charisma', score: 11, modifier: 0),
  ],
  allSkills: [
    Skill(name: 'Perception', modifier: 3, proficiency: false),
    Skill(name: 'Stealth', modifier: 5, proficiency: true),
  ],
  savingThrows: [
    SavingThrow(name: 'Strength', modifier: 6, proficiency: false),
    SavingThrow(name: 'Wisdom', modifier: 4, proficiency: false),
  ],
  weapons: [bite],
  traits: [teleport],
  favoredEnemy: '',
  favoredTerrain: '',
);
