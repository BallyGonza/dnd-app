import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';

import 'package:flutter/material.dart';

class PetAbilitiesList extends StatefulWidget {
  const PetAbilitiesList({
    required this.abilities,
    super.key,
  });

  final List<AbilityModel> abilities;

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
        padding: EdgeInsets.zero,
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
