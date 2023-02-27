import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class ListSpells extends StatefulWidget {
  const ListSpells({Key? key, required this.spells}) : super(key: key);

  final List<Spell> spells;

  @override
  State<ListSpells> createState() => _ListSpellsState();
}

class _ListSpellsState extends State<ListSpells> {
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
            itemCount: widget.spells.length,
            itemBuilder: (context, index) {
              return SpellCard(
                spell: widget.spells[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
