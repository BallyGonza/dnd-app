import 'package:dnd_app/data/data.dart';

Animal ghost = Animal(
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
    Ability(
      name: 'Fuerza',
      score: 12,
      modifier: 1,
    ),
    Ability(
      name: 'Destreza',
      score: 17,
      modifier: 3,
    ),
    Ability(
      name: 'Constitución',
      score: 12,
      modifier: 1,
    ),
    Ability(
      name: 'Inteligencia',
      score: 10,
      modifier: 0,
    ),
    Ability(
      name: 'Sabiduría',
      score: 13,
      modifier: 1,
    ),
    Ability(
      name: 'Carisma',
      score: 11,
      modifier: 0,
    ),
  ],
  skills: [
    Skill(
      name: 'Percepción',
      modifier: 3,
      proficiency: false,
    ),
    Skill(
      name: 'Sigilo',
      modifier: 5,
      proficiency: true,
    ),
  ],
  savingThrows: [
    SavingThrow(
      name: 'Fuerza',
      modifier: 6,
      proficiency: false,
    ),
    SavingThrow(
      name: 'Sabiduría',
      modifier: 4,
      proficiency: false,
    ),
  ],
  weapons: [biteBlinkDog],
  traits: [teleport],
);

Animal chimuelo = Animal(
  name: 'Chimuelo',
  race: 'Tressym',
  img: 'assets/images/animals/tressym/tressym.jpeg',
  profileImg: 'assets/images/animals/trssym/tressym.jpeg',
  armor: 12,
  speed: 8,
  climb: 8,
  fly: 8,
  healthPoints: HealthPoints(
    current: 6,
    max: 6,
  ),
  abilities: [
    Ability(
      name: 'Fuerza',
      score: 3,
      modifier: -4,
    ),
    Ability(
      name: 'Destreza',
      score: 15,
      modifier: 2,
    ),
    Ability(
      name: 'Constitución',
      score: 12,
      modifier: 1,
    ),
    Ability(
      name: 'Inteligencia',
      score: 11,
      modifier: 0,
    ),
    Ability(
      name: 'Sabiduría',
      score: 12,
      modifier: 1,
    ),
    Ability(
      name: 'Carisma',
      score: 12,
      modifier: 1,
    ),
  ],
  skills: [
    Skill(
      name: 'Percepción',
      modifier: 5,
      proficiency: false,
    ),
    Skill(
      name: 'Sigilo',
      modifier: 5,
      proficiency: false,
    ),
  ],
  savingThrows: [
    SavingThrow(
      name: 'Fuerza',
      modifier: 0,
      proficiency: false,
    ),
    SavingThrow(
      name: 'Sabiduría',
      modifier: 2,
      proficiency: false,
    ),
  ],
  weapons: [],
  traits: [],
);

Animal bear = Animal(
  name: 'Bear',
  race: 'Brown Bear',
  img: 'assets/images/animals/bear/bear.jpeg',
  profileImg: 'assets/images/animals/bear/bear.jpeg',
  armor: 11,
  speed: 8,
  climb: 6,
  healthPoints: HealthPoints(
    current: 34,
    max: 34,
  ),
  abilities: [
    Ability(
      name: 'Fuerza',
      score: 19,
      modifier: 4,
    ),
    Ability(
      name: 'Destreza',
      score: 10,
      modifier: 0,
    ),
    Ability(
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
