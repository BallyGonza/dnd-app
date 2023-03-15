import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/views/widgets/cards/title_and_child.dart';
import 'package:flutter/material.dart';

class WildFormAbilitiesList extends StatefulWidget {
  final List<Ability> abilities;

  const WildFormAbilitiesList({Key? key, required this.abilities})
      : super(key: key);

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
        padding: const EdgeInsets.all(0),
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
