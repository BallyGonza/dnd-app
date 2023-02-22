import 'package:flutter/material.dart';
import '../../models/character/character.dart';

class BackstoryCard extends StatefulWidget {
  final Character character;
  const BackstoryCard({Key? key, required this.character}) : super(key: key);

  @override
  State<BackstoryCard> createState() => _BackstoryCardState();
}

class _BackstoryCardState extends State<BackstoryCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final backstory in widget.character.backstory)
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
