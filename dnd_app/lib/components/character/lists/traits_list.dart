import 'package:flutter/material.dart';
import 'package:dnd_app/models/character/character_model.dart';
import '../../cards/trait_card.dart';

class ListTraits extends StatefulWidget {
  final Character character;
  const ListTraits({Key? key, required this.character}) : super(key: key);

  @override
  State<ListTraits> createState() => _ListTraitsState();
}

class _ListTraitsState extends State<ListTraits> {
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
            itemCount: widget.character.traits.length,
            itemBuilder: (context, index) {
              return TraitCard(
                trait: widget.character.traits[index],
                character: widget.character,
              );
            },
          ),
        ),
      ],
    );
  }
}
