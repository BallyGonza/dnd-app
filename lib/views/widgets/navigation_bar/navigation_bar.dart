import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/widgets/navigation_bar/widgets/navigation_bar_button.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    required this.character,
    required this.selected,
    required this.onPressed,
    super.key,
  });

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
          if (character.abilities.isNotEmpty)
            NavigationBarButton(
              name: 'ABILITIES',
              indexButton: 0,
              selected: selected,
              onPressed: onPressed,
            )
          else
            const SizedBox.shrink(),
          if (character.skills.isNotEmpty)
            NavigationBarButton(
              name: 'SKILLS',
              indexButton: 1,
              selected: selected,
              onPressed: onPressed,
            )
          else
            const SizedBox.shrink(),
          if (character.weapons.isNotEmpty)
            NavigationBarButton(
              name: 'WEAPONS',
              indexButton: 2,
              selected: selected,
              onPressed: onPressed,
            )
          else
            const SizedBox.shrink(),
          if (character.spells.isNotEmpty)
            NavigationBarButton(
              name: 'SPELLS',
              indexButton: 3,
              selected: selected,
              onPressed: onPressed,
            )
          else
            const SizedBox.shrink(),
          NavigationBarButton(
            name: 'LOOT',
            indexButton: 4,
            selected: selected,
            onPressed: onPressed,
          ),
          if (character.background.isNotEmpty || character.languages.isNotEmpty)
            NavigationBarButton(
              name:
                  character.background.isNotEmpty ? 'BACKGROUND' : 'LANGUAGES',
              indexButton: 5,
              selected: selected,
              onPressed: onPressed,
            )
          else
            const SizedBox.shrink(),
          if (character.traits.isNotEmpty)
            NavigationBarButton(
              name: 'TRAITS',
              indexButton: 6,
              selected: selected,
              onPressed: onPressed,
            )
          else
            const SizedBox.shrink(),
          if (character.wildForms.isNotEmpty)
            NavigationBarButton(
              name: 'WILD FORM',
              indexButton: 7,
              selected: selected,
              onPressed: onPressed,
            )
          else
            const SizedBox.shrink(),
          if (character.pets.isNotEmpty)
            NavigationBarButton(
              name: 'PET',
              indexButton: 8,
              selected: selected,
              onPressed: onPressed,
            )
          else
            const SizedBox.shrink(),
          if (character.backstory != '')
            NavigationBarButton(
              name: 'BACKSTORY',
              indexButton: 9,
              selected: selected,
              onPressed: onPressed,
            )
          else
            const SizedBox.shrink(),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
