import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class TraitCard extends StatefulWidget {
  const TraitCard(
      {Key? key,
      required this.trait,
      required this.favoredEnemy,
      required this.favoredTerrain})
      : super(key: key);

  final Trait trait;
  final String favoredEnemy;
  final String favoredTerrain;

  @override
  State<TraitCard> createState() => _TraitCardState();
}

class _TraitCardState extends State<TraitCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
      child: Card(
        child: ExpansionTile(
            title:
                Text(widget.trait.name, style: const TextStyle(fontSize: 20)),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 4, bottom: 4),
                child: Column(
                  children: [
                    Row(
                      children: [
                        widget.trait.name == "Favored Enemy"
                            ? Text('[${widget.favoredEnemy}]\n',
                                style: const TextStyle(fontSize: 15))
                            : widget.trait.name == "Favored Terrain"
                                ? Text('[${widget.favoredTerrain}]\n',
                                    style: const TextStyle(fontSize: 15))
                                // else display nothing
                                : Container(),
                      ],
                    ),
                    for (final description in widget.trait.description)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Column(
                          children: [
                            Text(description,
                                style: const TextStyle(fontSize: 15)),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
