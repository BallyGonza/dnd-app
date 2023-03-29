import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class SpellsList extends StatelessWidget {
  const SpellsList({Key? key, required this.spells}) : super(key: key);

  final List<Spell> spells;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(bottom: 70),
        child: ListView.builder(
          shrinkWrap: true,
          controller: ScrollController(),
          padding: const EdgeInsets.all(0),
          itemCount: spells.length,
          itemBuilder: (context, index) {
            return SpellCard(
              spell: spells[index],
            );
          },
        ),
      ),
    );
  }
}