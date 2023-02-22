import 'package:flutter/material.dart';
import 'package:dnd_app/models/character/character.dart';
import '../../cards/spell_card.dart';

class ListSpells extends StatefulWidget {
  final Character character;
  const ListSpells({Key? key, required this.character}) : super(key: key);

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
            // scrollDirection: Axis.vertical,
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.character.spells.length,
            itemBuilder: (context, index) {
              return SpellCard(
                spell: widget.character.spells[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
