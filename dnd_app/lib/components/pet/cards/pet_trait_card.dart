import 'package:flutter/material.dart';
import '../../../models/trait.dart';
import '../../../models/pet.dart';

class PetTraitCard extends StatefulWidget {
  final Trait trait;
  final Pet pet;
  const PetTraitCard({Key? key, required this.trait, required this.pet})
      : super(key: key);

  @override
  State<PetTraitCard> createState() => _PetTraitCardState();
}

class _PetTraitCardState extends State<PetTraitCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
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
                          ? Text('[${widget.pet.favoredEnemy}]\n',
                              style: const TextStyle(fontSize: 15))
                          : widget.trait.name == "Favored Terrain"
                              ? Text('[${widget.pet.favoredTerrain}]\n',
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
    );
  }
}
