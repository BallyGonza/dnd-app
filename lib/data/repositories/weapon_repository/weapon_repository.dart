import 'package:dnd_app/data/data.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WeaponRepository {
  WeaponRepository();

  final Box<CharacterModel> box = Hive.box<CharacterModel>('characters_box');
}

List<WeaponModel> defaultWeapons = [
  longBow,
  rapier,
  dagger,
  biteBlinkDog,
  biteBear,
  claws,
  hammer,
  hammerOfFire,
  axe,
  sword,
  oneHandedSword,
  twoHandedSword,
];

WeaponModel longBow = WeaponModel(
  id: 1,
  name: 'Arco',
  description: 'Arco largo',
  damage: 7,
  quantityOfDamageDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 12,
  img: 'assets/images/weapons/long_bow.png',
);

WeaponModel rapier = WeaponModel(
  id: 2,
  name: 'Rapier',
  description: 'Espada corta',
  damage: 4,
  quantityOfDamageDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 8,
  img: 'assets/images/weapons/rapier.png',
);

WeaponModel dagger = WeaponModel(
  id: 3,
  name: 'Daga',
  description: 'Daga corta',
  damage: 4,
  quantityOfDamageDices: 1,
  damageDice: d4,
  checkDice: d20,
  range: 7,
  img: 'assets/images/weapons/dagger.png',
);

WeaponModel biteBlinkDog = WeaponModel(
  id: 4,
  name: 'Mordida',
  description: '',
  damage: 4,
  quantityOfDamageDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 6,
  img: 'assets/images/weapons/bite.png',
);

WeaponModel biteBear = WeaponModel(
  id: 5,
  name: 'Mordida',
  description: '',
  damage: 4,
  quantityOfDamageDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 5,
  img: 'assets/images/weapons/bite.png',
);

WeaponModel claws = WeaponModel(
  id: 6,
  name: 'Garras',
  description: '',
  damage: 4,
  quantityOfDamageDices: 2,
  damageDice: d6,
  checkDice: d20,
  range: 5,
  img: 'assets/images/weapons/claws.png',
);

WeaponModel hammer = WeaponModel(
  id: 7,
  name: 'Martillo',
  description: 'Martillo de guerra',
  damage: 4,
  quantityOfDamageDices: 2,
  damageDice: d6,
  checkDice: d20,
  range: 8,
  img: 'assets/images/weapons/hammer.png',
);

WeaponModel axe = WeaponModel(
  id: 8,
  name: 'Hacha',
  description: 'Hacha de guerra',
  damage: 4,
  quantityOfDamageDices: 1,
  damageDice: d6,
  checkDice: d20,
  range: 7,
  img: 'assets/images/weapons/axe.png',
);

// Espada de Vaunea
WeaponModel sword = WeaponModel(
  id: 9,
  name: 'Espada',
  description: 'Espada de una mano',
  damage: 4,
  quantityOfDamageDices: 1,
  damageDice: d6,
  checkDice: d20,
  range: 8,
  img: 'assets/images/weapons/sword.png',
);

WeaponModel hammerOfFire = WeaponModel(
  id: 10,
  name: 'Martillo',
  description: 'Martillo de fuego',
  damage: 4,
  quantityOfDamageDices: 2,
  damageDice: d6,
  quantityOfPlusDamageDices: 1,
  plusDamageDice: d8,
  checkDice: d20,
  range: 8,
  img: 'assets/images/weapons/hammer_of_fire.png',
);

// Espada una mano de Evendur
WeaponModel oneHandedSword = WeaponModel(
  id: 11,
  name: 'Espada',
  description: 'Espada de una mano',
  damage: 4,
  quantityOfDamageDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 7,
  img: 'assets/images/weapons/sword.png',
);

// Espada dos manos de Evendur
WeaponModel twoHandedSword = WeaponModel(
  id: 12,
  name: 'Espada',
  description: 'Espada de dos manos',
  damage: 4,
  quantityOfDamageDices: 1,
  damageDice: d10,
  checkDice: d20,
  range: 7,
  img: 'assets/images/weapons/sword.png',
);
