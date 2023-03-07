import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class ListBackgrounds extends StatelessWidget {
  const ListBackgrounds(
      {Key? key, required this.backgrounds, required this.languages})
      : super(key: key);

  final List<Background> backgrounds;
  final String languages;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final background in backgrounds)
            TitleTextCard(title: background.name, text: background.description),
          TitleTextCard(title: 'Languages', text: languages),
        ],
      ),
    );
  }
}
