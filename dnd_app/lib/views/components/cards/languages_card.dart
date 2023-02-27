import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class LanguagesCard extends StatefulWidget {
  final Character character;
  const LanguagesCard({Key? key, required this.character}) : super(key: key);

  @override
  State<LanguagesCard> createState() => _LanguagesCardState();
}

class _LanguagesCardState extends State<LanguagesCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      'Languages',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 4, bottom: 4, left: 15, right: 15),
                child: Container(
                  height: 0.5,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 4),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.character.languages,
                        style: const TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
