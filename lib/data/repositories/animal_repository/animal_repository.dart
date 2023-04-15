import 'package:dnd_app/data/data.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AnimalRepository {
  AnimalRepository();

  final Box<CharacterModel> box = Hive.box<CharacterModel>('characters_box');
}

List<AnimalModel> defaultAnimals = [ghost, bear, chimuelo];

AnimalModel ghost = AnimalModel(
  name: 'Ghost',
  race: 'Blink Dog',
  img: 'assets/images/animals/blink_dog/blink_dog.jpeg',
  profileImg: 'assets/images/animals/blink_dog/blink_dog_profile.jpeg',
  armor: 16,
  speed: 8,
  healthPoints: HealthPointsModel(
    current: 35,
    max: 35,
  ),
  abilities: [
    AbilityModel(
      name: 'Fuerza',
      score: 12,
      modifier: 1,
    ),
    AbilityModel(
      name: 'Destreza',
      score: 17,
      modifier: 3,
    ),
    AbilityModel(
      name: 'Constitución',
      score: 12,
      modifier: 1,
    ),
    AbilityModel(
      name: 'Inteligencia',
      score: 10,
      modifier: 0,
    ),
    AbilityModel(
      name: 'Sabiduría',
      score: 13,
      modifier: 1,
    ),
    AbilityModel(
      name: 'Carisma',
      score: 11,
      modifier: 0,
    ),
  ],
  skills: [
    SkillModel(
      name: 'Percepción',
      modifier: 3,
      proficiency: false,
    ),
    SkillModel(
      name: 'Sigilo',
      modifier: 5,
      proficiency: true,
    ),
  ],
  savingThrows: [
    SavingThrowModel(
      name: 'Fuerza',
      modifier: 6,
      proficiency: false,
    ),
    SavingThrowModel(
      name: 'Sabiduría',
      modifier: 4,
      proficiency: false,
    ),
  ],
  weapons: [biteBlinkDog],
  traits: [teleport],
);

AnimalModel chimuelo = AnimalModel(
  name: 'Chimuelo',
  race: 'Tressym',
  img: 'assets/images/animals/tressym/tressym.jpeg',
  profileImg: 'assets/images/animals/trssym/tressym.jpeg',
  armor: 12,
  speed: 8,
  climb: 8,
  fly: 8,
  healthPoints: HealthPointsModel(
    current: 6,
    max: 6,
  ),
  abilities: [
    AbilityModel(
      name: 'Fuerza',
      score: 3,
      modifier: -4,
    ),
    AbilityModel(
      name: 'Destreza',
      score: 15,
      modifier: 2,
    ),
    AbilityModel(
      name: 'Constitución',
      score: 12,
      modifier: 1,
    ),
    AbilityModel(
      name: 'Inteligencia',
      score: 11,
      modifier: 0,
    ),
    AbilityModel(
      name: 'Sabiduría',
      score: 12,
      modifier: 1,
    ),
    AbilityModel(
      name: 'Carisma',
      score: 12,
      modifier: 1,
    ),
  ],
  skills: [
    SkillModel(
      name: 'Percepción',
      modifier: 5,
      proficiency: false,
    ),
    SkillModel(
      name: 'Sigilo',
      modifier: 5,
      proficiency: false,
    ),
  ],
  savingThrows: [
    SavingThrowModel(
      name: 'Fuerza',
      modifier: 0,
      proficiency: false,
    ),
    SavingThrowModel(
      name: 'Sabiduría',
      modifier: 2,
      proficiency: false,
    ),
  ],
  weapons: [],
  traits: [],
);

AnimalModel bear = AnimalModel(
  name: 'Bear',
  race: 'Brown Bear',
  img: 'assets/images/animals/bear/bear.jpeg',
  profileImg: 'assets/images/animals/bear/bear.jpeg',
  armor: 11,
  speed: 8,
  climb: 6,
  healthPoints: HealthPointsModel(
    current: 34,
    max: 34,
  ),
  abilities: [
    AbilityModel(
      name: 'Fuerza',
      score: 19,
      modifier: 4,
    ),
    AbilityModel(
      name: 'Destreza',
      score: 10,
      modifier: 0,
    ),
    AbilityModel(
      name: 'Constitución',
      score: 16,
      modifier: 3,
    ),
  ],
  skills: [],
  savingThrows: [],
  weapons: [biteBear, claws],
  traits: [multiAttack, acuteSmell],
);
