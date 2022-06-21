import 'package:dnd_app/components/cards/languages_card.dart';
import 'package:flutter/material.dart';
import '../../../models/background.dart';
import '../../../models/character/character.dart';
import '../../cards/background_card.dart';

class ListBackgrounds extends StatefulWidget {
  final Character character;
  final List<Background> backgrounds;

  const ListBackgrounds(
      {Key? key, required this.backgrounds, required this.character})
      : super(key: key);
  @override
  State<ListBackgrounds> createState() => _ListBackgroundsState();
}

class _ListBackgroundsState extends State<ListBackgrounds> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final background in widget.backgrounds)
          BackgroundCard(background: background),
        LanguagesCard(character: widget.character),
      ],
    );
  }
}
