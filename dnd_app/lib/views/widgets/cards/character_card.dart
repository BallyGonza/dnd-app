import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({Key? key, required this.character}) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    final String name = character.name.toString();
    final String lastName = character.lastName.toString();
    final String level = character.level.toString();
    return ListTile(
      leading: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (_) => _buildDialog(context),
          );
        },
        child: CircleAvatar(
          backgroundImage: AssetImage(character.profileImg),
        ),
      ),
      title: Text('$name $lastName',
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
          )),
      subtitle: Text(
        'Level $level',
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterDetailScreen(
              character: character,
            ),
          ),
        );
      },
    );
  }

  Widget _buildDialog(BuildContext context) {
    return Dialog(
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Image.asset(character.img),
      ),
    );
  }
}
