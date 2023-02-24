import 'package:dnd_app/components/components.dart';
import 'package:dnd_app/models/models.dart';
import 'package:flutter/material.dart';

class PetAbilitiesList extends StatefulWidget {
  final List<Ability> abilities;

  const PetAbilitiesList({Key? key, required this.abilities}) : super(key: key);

  @override
  State<PetAbilitiesList> createState() => _PetAbilitiesListsState();
}

class _PetAbilitiesListsState extends State<PetAbilitiesList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: const Text(
          'Abilities',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        children: [
          ListView.builder(
            // scrollDirection: Axis.vertical,
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.abilities.length,
            itemBuilder: (context, index) {
              return PetAbilityCard(
                ability: widget.abilities[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
