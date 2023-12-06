import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class WeaponsList extends StatelessWidget {
  const WeaponsList({required this.weapons, super.key});

  final List<WeaponModel> weapons;

  @override
  Widget build(BuildContext context) {
    return weapons.isEmpty
        ? const NoWeapons()
        : ListView.builder(
            shrinkWrap: true,
            controller: ScrollController(),
            padding: EdgeInsets.zero,
            itemCount: weapons.length,
            itemBuilder: (context, index) {
              return WeaponCard(
                weapon: weapons[index],
              );
            },
          );
  }
}
