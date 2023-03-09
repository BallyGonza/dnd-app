import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class BackstoryCard extends StatelessWidget {
  const BackstoryCard({Key? key, required this.backstory}) : super(key: key);

  final String backstory;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: TitleAndTextCard(
        title: 'Backstory',
        text: backstory,
      ),
    );
  }
}
