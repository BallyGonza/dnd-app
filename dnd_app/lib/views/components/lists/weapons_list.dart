import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:dnd_app/views/views.dart';

class ListWeapons extends StatefulWidget {
  const ListWeapons({Key? key, required this.weapons}) : super(key: key);

  final List<Weapon> weapons;

  @override
  State<ListWeapons> createState() => _ListWeaponsState();
}

class _ListWeaponsState extends State<ListWeapons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.weapons.length,
            itemBuilder: (context, index) {
              return WeaponCard(
                weapon: widget.weapons[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
