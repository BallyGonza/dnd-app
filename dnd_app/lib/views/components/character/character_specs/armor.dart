import 'package:flutter/material.dart';

class ArmorClass extends StatelessWidget {
  final int armor;
  final Color color;

  const ArmorClass({Key? key, required this.armor, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          armor.toString(),
          style: TextStyle(fontSize: 20, color: color),
        ),
        Text(
          'ARMOR',
          style: TextStyle(fontSize: 9, color: color),
        ),
        Text(
          'CLASS',
          style: TextStyle(fontSize: 9, color: color),
        ),
      ],
    );
  }
}
