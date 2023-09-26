import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class WildFormAbilitiesList extends StatefulWidget {
  const WildFormAbilitiesList({required this.abilities, super.key});
  final List<AbilityModel> abilities;

  @override
  State<WildFormAbilitiesList> createState() => _WildFormAbilitiesListsState();
}

class _WildFormAbilitiesListsState extends State<WildFormAbilitiesList> {
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
          return WildFormAbilityCard(
            ability: widget.abilities[index],
          );
        },
      ),
    );
  }
}
