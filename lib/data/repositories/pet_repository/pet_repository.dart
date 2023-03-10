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
  allSkills: [
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
  weapons: [bite],
  traits: [teleport],
);
