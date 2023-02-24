import 'package:dnd_app/components/components.dart';
import 'package:dnd_app/models/models.dart';
import 'package:flutter/material.dart';

class PetsList extends StatefulWidget {
  final Character character;
  const PetsList({Key? key, required this.character}) : super(key: key);

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
