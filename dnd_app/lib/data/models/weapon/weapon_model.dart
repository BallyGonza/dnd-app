import 'package:dnd_app/data/data.dart';

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
