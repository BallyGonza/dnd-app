// ignore_for_file: inference_failure_on_function_return_type

import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/widgets/navigation_bar/widgets/navigation_bar_button.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    required this.character,
    required this.selected,
    required this.onPressed,
    required this.navController,
    super.key,
  });

  final CharacterModel character;
  final ScrollController navController;
  final int selected;
  final Function(int) onPressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: navController,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const SizedBox(width: 10),
          NavigationBarButton(
            name: 'ABILITIES',
            indexButton: 0,
            selected: selected,
            onPressed: onPressed,
          ),
          NavigationBarButton(
            name: 'SKILLS',
            indexButton: 1,
            selected: selected,
            onPressed: onPressed,
          ),
          NavigationBarButton(
            name: 'WEAPONS',
            indexButton: 2,
            selected: selected,
            onPressed: onPressed,
          ),
          NavigationBarButton(
            name: 'SPELLS',
            indexButton: 3,
            selected: selected,
            onPressed: onPressed,
          ),
          NavigationBarButton(
            name: 'LOOT',
            indexButton: 4,
            selected: selected,
            onPressed: onPressed,
          ),
          NavigationBarButton(
            name: 'BACKGROUND',
            indexButton: 5,
            selected: selected,
            onPressed: onPressed,
          ),
          NavigationBarButton(
            name: 'TRAITS',
            indexButton: 6,
            selected: selected,
            onPressed: onPressed,
          ),
          NavigationBarButton(
            name: 'WILD FORM',
            indexButton: 7,
            selected: selected,
            onPressed: onPressed,
          ),
          NavigationBarButton(
            name: 'PET',
            indexButton: 8,
            selected: selected,
            onPressed: onPressed,
          ),
          NavigationBarButton(
            name: 'BACKSTORY',
            indexButton: 9,
            selected: selected,
            onPressed: onPressed,
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
