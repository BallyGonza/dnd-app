import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class ListTraits extends StatefulWidget {
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
  State<ListTraits> createState() => _ListTraitsState();
}

class _ListTraitsState extends State<ListTraits> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.traits.length,
            itemBuilder: (context, index) {
              return TraitCard(
                trait: widget.traits[index],
                favoredEnemy: widget.favoredEnemy,
                favoredTerrain: widget.favoredTerrain,
              );
            },
          ),
        ),
      ],
    );
  }
}
