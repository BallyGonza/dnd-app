import 'package:dnd_app/models/models.dart';
import 'package:flutter/material.dart';

class BackstoryCard extends StatelessWidget {
  final Character character;
  const BackstoryCard({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final backstory in character.backstory)
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
            child: Text(
              backstory,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),
            ),
          ),
      ],
    );
  }
}
