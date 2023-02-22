import 'ability.dart';
import 'saving_throw.dart';
import 'skill.dart';
import 'trait.dart';
import 'weapon.dart';

class Pet {
  final String name;
  final String race;
  final String img;
  final String profileImg;
  final int armor;
  final int speed;
  int currentHp;
  int maxHp;
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
    required this.currentHp,
    required this.maxHp,
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
  img: 'assets/images/animals/blink-dog/blinkDog.jpeg',
  profileImg: 'assets/images/animals/blink-dog/blinkDog_profile.jpeg',
  armor: 16,
  speed: 8,
  currentHp: 35,
  maxHp: 35,
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
