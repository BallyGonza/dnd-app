import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class BackgroundsList extends StatelessWidget {
  const BackgroundsList(
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
            TitleAndTextCard(
                title: background.name, text: background.description),
          TitleAndTextCard(title: 'Languages', text: languages),
        ],
      ),
    );
  }
}
