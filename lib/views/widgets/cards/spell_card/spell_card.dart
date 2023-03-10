import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class SpellCard extends StatefulWidget {
  final Spell spell;

  const SpellCard({super.key, required this.spell});

  @override
  SpellCardState createState() => SpellCardState();
}

class SpellCardState extends State<SpellCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Card(
        color: Colors.purple[100],
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: SpellNameContainer(spellName: widget.spell.name),
            ),
            Visibility(
              visible: isExpanded,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SpellSpecContainer(
                                    spec: 'CASTING TIME',
                                    specDetail: widget.spell.castTime),
                                const SizedBox(height: 4),
                                SpellSpecContainer(
                                    spec: 'COMPONENTS',
                                    specDetail: widget.spell.comp),
                              ],
                            ),
                            const SizedBox(width: 4),
                            Column(
                              children: [
                                SpellSpecContainer(
                                    spec: 'RANGE',
                                    specDetail: widget.spell.range),
                                const SizedBox(height: 4),
                                SpellSpecContainer(
                                    spec: 'DURATION',
                                    specDetail: widget.spell.duration),
                              ],
                            ),
                          ],
                        )),
                    const SizedBox(height: 20),
                    SpellDescriptionContainer(
                      spellDescription: widget.spell.description,
                    ),
                    const SizedBox(height: 4),
                    SpellLevelContainer(level: widget.spell.level),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
