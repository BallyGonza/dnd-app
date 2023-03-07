import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class SpellCard extends StatelessWidget {
  final Spell spell;
  const SpellCard({Key? key, required this.spell}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String name = spell.name;
    final int level = spell.level;
    final String range = spell.range;
    final String castTime = spell.castTime;
    final String comp = spell.comp;
    final String duration = spell.duration;
    final String description = spell.description;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Color(spellCardColor)),
            left: BorderSide(color: Color(spellCardColor)),
            right: BorderSide(color: Color(spellCardColor)),
            bottom: BorderSide(color: Color(spellCardColor)),
          ),
        ),
        child: ExpansionTile(
            title: Text(
              name,
              style: const TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              'Level ${level.toString()}',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Color(spellCardColor)),
                    bottom: BorderSide(color: Color(spellCardColor)),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    childAspectRatio: 7,
                    children: [
                      SpecField(title: 'Range', details: range),
                      SpecField(title: 'Cast Time', details: castTime),
                      SpecField(title: 'Comp', details: comp),
                      SpecField(title: 'Duration', details: duration),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child:
                      Text(description, style: const TextStyle(fontSize: 15)),
                ),
              ),
            ]),
      ),
    );
  }
}

class SpecField extends StatelessWidget {
  const SpecField({
    Key? key,
    required this.details,
    required this.title,
  }) : super(key: key);

  final String details;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${title.toUpperCase()}: ',
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 3),
        Expanded(
          child: Text(
            overflow: TextOverflow.ellipsis,
            details,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
