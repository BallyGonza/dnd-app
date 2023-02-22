import 'package:dnd_app/screens/character_detail.dart';
import 'package:dnd_app/models/models.dart';
import 'package:flutter/material.dart';

class CharacterSelectScreen extends StatelessWidget {
  const CharacterSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dungeons & Dragons'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                characters[index].profileImg,
              ),
            ),
            title: Text(
              '${characters[index].name} ${characters[index].lastName}',
            ),
            subtitle: Text(
              'Level ${characters[index].level}',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetail(
                    character: characters[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
