import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: defaultCharacters.length,
      itemBuilder: (context, index) {
        return CharacterCard(
          profileImg: defaultCharacters[index].profileImg,
          lastName: defaultCharacters[index].lastName,
          level: defaultCharacters[index].level,
          name: defaultCharacters[index].name,
          index: index,
        );
      },
    );
  }
}
