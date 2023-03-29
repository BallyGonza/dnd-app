import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/views/widgets/title_and_child.dart';
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
    return TitleAndChildCard(
      title: 'Abilities',
      child: ListView.builder(
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
    );
  }
}
