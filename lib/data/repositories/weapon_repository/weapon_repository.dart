import 'package:dnd_app/data/data.dart';

Weapon longBow = Weapon(
  id: 1,
  name: 'Arco Largo',
  damage: 7,
  quantityOfDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 12,
  img: 'assets/images/weapons/long_bow.png',
);

Weapon rapier = Weapon(
  id: 2,
  name: 'Rapier',
  damage: 4,
  quantityOfDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 8,
  img: 'assets/images/weapons/rapier.png',
);

Weapon dagger = Weapon(
  id: 3,
  name: 'Daga',
  damage: 4,
  quantityOfDices: 1,
  damageDice: d4,
  checkDice: d20,
  range: 7,
  img: 'assets/images/weapons/dagger.png',
);

Weapon biteBlinkDog = Weapon(
  id: 4,
  name: 'Mordida',
  damage: 4,
  quantityOfDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 6,
  img: 'assets/images/weapons/bite.png',
);

Weapon biteBear = Weapon(
  id: 5,
  name: 'Mordida',
  damage: 4,
  quantityOfDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 5,
  img: 'assets/images/weapons/bite.png',
);

Weapon claws = Weapon(
  id: 6,
  name: 'Garras',
  damage: 4,
  quantityOfDices: 2,
  damageDice: d6,
  checkDice: d20,
  range: 5,
  img: 'assets/images/weapons/claws.png',
);

Weapon hammer = Weapon(
  id: 7,
  name: 'Martillo',
  damage: 4,
  quantityOfDices: 2,
  damageDice: d6,
  checkDice: d20,
  range: 8,
  img: 'assets/images/weapons/hammer.png',
);

Weapon axe = Weapon(
  id: 8,
  name: 'Hacha',
  damage: 4,
  quantityOfDices: 1,
  damageDice: d6,
  checkDice: d20,
  range: 7,
  img: 'assets/images/weapons/axe.png',
);

// Espada de Vaunea
Weapon sword = Weapon(
  id: 9,
  name: 'Espada',
  damage: 4,
  quantityOfDices: 1,
  damageDice: d6,
  checkDice: d20,
  range: 8,
  img: 'assets/images/weapons/sword.png',
);

// Martillo de Fuego de Vaunea?
Weapon hammerOfFire = Weapon(
  id: 10,
  name: 'Martillo de Fuego',
  damage: 4,
  quantityOfDices: 2,
  damageDice: d6,
  checkDice: d20,
  range: 8,
  img: 'assets/images/weapons/hammer.png',
);

// Espada una mano de Evendur
Weapon oneHandedSword = Weapon(
  id: 11,
  name: 'Espada de una mano',
  damage: 4,
  quantityOfDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 7,
  img: 'assets/images/weapons/sword.png',
);

// Espada dos manos de Evendur
Weapon twoHandedSword = Weapon(
  id: 12,
  name: 'Espada de dos manos',
  damage: 4,
  quantityOfDices: 1,
  damageDice: d10,
  checkDice: d20,
  range: 7,
  img: 'assets/images/weapons/sword.png',
);
