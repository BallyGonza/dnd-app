import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class ListTraits extends StatelessWidget {
  const ListTraits({
    Key? key,
    required this.traits,
  }) : super(key: key);

  final List<Trait> traits;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(bottom: 70),
        child: ListView.builder(
          shrinkWrap: true,
          controller: ScrollController(),
          padding: const EdgeInsets.all(0),
          itemCount: traits.length,
          itemBuilder: (context, index) {
            return TitleTextCard(
                title: traits[index].name, text: traits[index].description);
          },
        ),
      ),
    );
  }
}
