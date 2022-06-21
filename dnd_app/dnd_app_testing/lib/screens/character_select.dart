import 'package:flutter/material.dart';
import '../models/character/character.dart';
import 'character_detail.dart';

class CharacterSelectScreen extends StatefulWidget {
  const CharacterSelectScreen({Key? key}) : super(key: key);

  @override
  State<CharacterSelectScreen> createState() => _CharacterSelectScreenState();
}

class _CharacterSelectScreenState extends State<CharacterSelectScreen> {
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
              backgroundImage: AssetImage(characters[index].profileImg),
            ),
            title:
                Text('${characters[index].name} ${characters[index].lastName}'),
            subtitle: Text('Level ${characters[index].level}'),
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
