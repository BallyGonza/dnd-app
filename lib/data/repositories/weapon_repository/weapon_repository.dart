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

Weapon bite = Weapon(
  id: 4,
  name: 'Mordida',
  damage: 4,
  quantityOfDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 6,
  img: 'assets/images/weapons/bite.png',
);
