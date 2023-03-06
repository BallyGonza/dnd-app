import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:dnd_app/views/views.dart';

class ListWeapons extends StatelessWidget {
  const ListWeapons({Key? key, required this.weapons}) : super(key: key);

  final List<Weapon> weapons;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      controller: ScrollController(),
      padding: const EdgeInsets.all(0),
      itemCount: weapons.length,
      itemBuilder: (context, index) {
        return WeaponCard(
          weapon: weapons[index],
        );
      },
    );
  }
}
