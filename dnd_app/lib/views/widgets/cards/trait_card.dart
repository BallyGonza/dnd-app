import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class TraitCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
      child: Card(
        child: ExpansionTile(
            title: Text(trait.name, style: const TextStyle(fontSize: 20)),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 4, bottom: 4),
                child: Column(
                  children: [
                    Text(
                      trait.name,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Column(
                        children: [
                          Text(trait.description,
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
