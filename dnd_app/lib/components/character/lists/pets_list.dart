import 'package:flutter/material.dart';
import '../../../models/character/character_model.dart';
import '../../cards/pet_card.dart';

class PetsList extends StatefulWidget {
  final Character character;
  PetsList({Key? key, required this.character}) : super(key: key);

  @override
  State<PetsList> createState() => _PetsListState();
}

class _PetsListState extends State<PetsList> {
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
            itemCount: widget.character.pets.length,
            itemBuilder: (context, index) {
              return PetCard(
                pet: widget.character.pets[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
