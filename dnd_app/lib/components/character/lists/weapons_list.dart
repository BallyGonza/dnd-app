import 'package:flutter/material.dart';
import 'package:dnd_app/models/models.dart';
import 'package:dnd_app/components/components.dart';

class ListWeapons extends StatefulWidget {
  final Character character;
  const ListWeapons({Key? key, required this.character}) : super(key: key);

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
            // scrollDirection: Axis.vertical,
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.character.weapons.length,
            itemBuilder: (context, index) {
              return WeaponCard(
                weapon: widget.character.weapons[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
