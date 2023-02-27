import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class PetTraitsList extends StatefulWidget {
  final Pet pet;
  const PetTraitsList({Key? key, required this.pet}) : super(key: key);

  @override
  State<PetTraitsList> createState() => _PetTraitsListState();
}

class _PetTraitsListState extends State<PetTraitsList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: const Text(
          'Traits',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        children: [
          ListView.builder(
            // scrollDirection: Axis.vertical,
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.pet.traits.length,
            itemBuilder: (context, index) {
              return PetTraitCard(
                trait: widget.pet.traits[index],
                pet: widget.pet,
              );
            },
          ),
        ],
      ),
    );
  }
}
