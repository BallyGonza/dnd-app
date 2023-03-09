import 'package:dnd_app/data/data.dart';

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
