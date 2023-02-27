import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(
      {super.key,
      required this.profileImg,
      required this.lastName,
      required this.name,
      required this.index,
      required this.level});

  final String profileImg;
  final String lastName;
  final String name;
  final int index;
  final int level;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          profileImg,
        ),
      ),
      title: Text(
        '$name $lastName',
      ),
      subtitle: Text(
        'Level $level',
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterDetailScreen(
              character: defaultCharacters[index],
            ),
          ),
        );
      },
    );
  }
}
