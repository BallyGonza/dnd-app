import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    Key? key,
    required this.profileImg,
    required this.img,
    required this.lastName,
    required this.name,
    required this.index,
    required this.level,
  }) : super(key: key);

  final String profileImg;
  final String img;
  final String lastName;
  final String name;
  final int index;
  final int level;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (_) => _buildDialog(context),
          );
        },
        child: Hero(
          tag: 'profileImg$index',
          child: CircleAvatar(
            backgroundImage: AssetImage(profileImg),
          ),
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
              character: defaultCharacters[index],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDialog(BuildContext context) {
    return Hero(
      tag: 'profileImg$index',
      child: Dialog(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(img),
        ),
      ),
    );
  }
}
