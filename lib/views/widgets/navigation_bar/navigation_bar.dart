import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/widgets/navigation_bar/widgets/navigation_bar_button.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
    required this.character,
    required this.selected,
    required this.onPressed,
  }) : super(key: key);

  final CharacterModel character;
  final int selected;
  final Function(int) onPressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const SizedBox(width: 10),
          character.abilities.isNotEmpty
              ? NavigationBarButton(
                  name: 'ABILITIES',
                  indexButton: 0,
                  selected: selected,
                  onPressed: onPressed,
                )
              : const SizedBox.shrink(),
          character.skills.isNotEmpty
              ? NavigationBarButton(
                  name: 'SKILLS',
                  indexButton: 1,
                  selected: selected,
                  onPressed: onPressed,
                )
              : const SizedBox.shrink(),
          character.weapons.isNotEmpty
              ? NavigationBarButton(
                  name: 'WEAPONS',
                  indexButton: 2,
                  selected: selected,
                  onPressed: onPressed,
                )
              : const SizedBox.shrink(),
          character.spells.isNotEmpty
              ? NavigationBarButton(
                  name: 'SPELLS',
                  indexButton: 3,
                  selected: selected,
                  onPressed: onPressed,
                )
              : const SizedBox.shrink(),
          NavigationBarButton(
            name: 'LOOT',
            indexButton: 4,
            selected: selected,
            onPressed: onPressed,
          ),
          character.background.isNotEmpty || character.languages.isNotEmpty
              ? NavigationBarButton(
                  name: character.background.isNotEmpty
                      ? 'BACKGROUND'
                      : 'LANGUAGES',
                  indexButton: 5,
                  selected: selected,
                  onPressed: onPressed,
                )
              : const SizedBox.shrink(),
          character.traits.isNotEmpty
              ? NavigationBarButton(
                  name: 'TRAITS',
                  indexButton: 6,
                  selected: selected,
                  onPressed: onPressed,
                )
              : const SizedBox.shrink(),
          character.wildForms.isNotEmpty
              ? NavigationBarButton(
                  name: 'WILD FORM',
                  indexButton: 7,
                  selected: selected,
                  onPressed: onPressed,
                )
              : const SizedBox.shrink(),
          character.pets.isNotEmpty
              ? NavigationBarButton(
                  name: 'PET',
                  indexButton: 8,
                  selected: selected,
                  onPressed: onPressed,
                )
              : const SizedBox.shrink(),
          character.backstory != ''
              ? NavigationBarButton(
                  name: 'BACKSTORY',
                  indexButton: 9,
                  selected: selected,
                  onPressed: onPressed,
                )
              : const SizedBox.shrink(),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
