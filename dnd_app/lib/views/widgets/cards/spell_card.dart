import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class SpellCard extends StatefulWidget {
  final Spell spell;
  const SpellCard({Key? key, required this.spell}) : super(key: key);

  @override
  State<SpellCard> createState() => _SpellCardState();
}

class _SpellCardState extends State<SpellCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final String name = widget.spell.name;
    final int level = widget.spell.level;
    final String range = widget.spell.range;
    final String castTime = widget.spell.castTime;
    final String comp = widget.spell.comp;
    final String duration = widget.spell.duration;
    final String description = widget.spell.description;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded = !isExpanded;
            });
          },
          children: [
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(
                    name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: Text(
                    'Level ${level.toString()}',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(color: Colors.black.withOpacity(0.5)),
                  ),
                );
              },
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SpecField(title: 'Range', details: range),
                    SpecField(title: 'Cast Time', details: castTime),
                    SpecField(title: 'Comp', details: comp),
                    SpecField(title: 'Duration', details: duration),
                    const SizedBox(height: 6),
                    Divider(height: 0, thickness: 1, color: Colors.purple[200]),
                    const SizedBox(height: 6),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              isExpanded: isExpanded,
            ),
          ],
        ),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${title.toUpperCase()}: ',
          style: Theme.of(context).textTheme.caption,
        ),
        Expanded(
          child: Text(
            details,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
