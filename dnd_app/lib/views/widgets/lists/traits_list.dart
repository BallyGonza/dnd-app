import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class ListTraits extends StatelessWidget {
  const ListTraits(
      {Key? key,
      required this.traits,
      required this.favoredEnemy,
      required this.favoredTerrain})
      : super(key: key);

  final List<Trait> traits;
  final String favoredEnemy;
  final String favoredTerrain;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      controller: ScrollController(),
      padding: const EdgeInsets.all(0),
      itemCount: traits.length,
      itemBuilder: (context, index) {
        return TraitCard(
          trait: traits[index],
          favoredEnemy: favoredEnemy,
          favoredTerrain: favoredTerrain,
        );
      },
    );
  }
}
