import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/data/data.dart';
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
        itemCount: defaultCharacters.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                defaultCharacters[index].profileImg,
              ),
            ),
            title: Text(
              '${defaultCharacters[index].name} ${defaultCharacters[index].lastName}',
            ),
            subtitle: Text(
              'Level ${defaultCharacters[index].level}',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetail(
                    character: defaultCharacters[index],
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
