import 'dice.dart';

class Weapon {
  final int id;
  final String name;
  final int damage;
  final int quantityOfDices;
  final Dice damageDice;
  final Dice checkDice;
  final int range;
  final String img;

  Weapon({
    required this.id,
    required this.name,
    required this.damage,
    required this.quantityOfDices,
    required this.damageDice,
    required this.checkDice,
    required this.range,
    required this.img,
  });
}

Weapon longBow = Weapon(
  id: 1,
  name: 'Long Bow',
  damage: 7,
  quantityOfDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 12,
  img: 'assets/images/weapons/longBow.png',
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
  name: 'Dagger',
  damage: 4,
  quantityOfDices: 1,
  damageDice: d4,
  checkDice: d20,
  range: 7,
  img: 'assets/images/weapons/dagger.png',
);

Weapon bite = Weapon(
  id: 4,
  name: 'Bite',
  damage: 4,
  quantityOfDices: 1,
  damageDice: d8,
  checkDice: d20,
  range: 6,
  img: 'assets/images/weapons/bite.png',
);
