import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

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
