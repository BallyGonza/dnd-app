import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class TraitsList extends StatelessWidget {
  const TraitsList({
    required this.traits,
    super.key,
  });

  final List<TraitModel> traits;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: ListView.builder(
          shrinkWrap: true,
          controller: ScrollController(),
          padding: EdgeInsets.zero,
          itemCount: traits.length,
          itemBuilder: (context, index) {
            return TitleAndTextCard(
              title: traits[index].name,
              text: traits[index].description,
            );
          },
        ),
      ),
    );
  }
}
