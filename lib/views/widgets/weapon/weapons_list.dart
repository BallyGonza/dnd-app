import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:dnd_app/views/views.dart';

class WeaponsList extends StatelessWidget {
  const WeaponsList({Key? key, required this.weapons}) : super(key: key);

  final List<WeaponModel> weapons;

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
