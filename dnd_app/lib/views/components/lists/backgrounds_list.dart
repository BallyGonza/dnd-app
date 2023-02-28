import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class ListBackgrounds extends StatefulWidget {
  const ListBackgrounds(
      {Key? key, required this.backgrounds, required this.languages})
      : super(key: key);

  final List<Background> backgrounds;
  final String languages;

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
        LanguagesCard(languages: widget.languages),
      ],
    );
  }
}
