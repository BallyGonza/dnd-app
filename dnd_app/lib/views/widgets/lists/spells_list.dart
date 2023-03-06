import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class ListSpells extends StatelessWidget {
  const ListSpells({Key? key, required this.spells}) : super(key: key);

  final List<Spell> spells;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      controller: ScrollController(),
      padding: const EdgeInsets.all(0),
      itemCount: spells.length,
      itemBuilder: (context, index) {
        return SpellCard(
          spell: spells[index],
        );
      },
    );
  }
}
