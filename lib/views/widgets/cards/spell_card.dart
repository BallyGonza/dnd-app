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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 4,
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded = !isExpanded;
            });
          },
          dividerColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
          expandedHeaderPadding: EdgeInsets.zero,
          animationDuration: const Duration(milliseconds: 300),
          children: [
            ExpansionPanel(
              canTapOnHeader: true,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Level ${level.toString()}',
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(0.5),
                            ),
                      ),
                    ],
                  ),
                );
              },
              body: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Column(
                  children: [
                    GridView(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 6,
                      ),
                      children: [
                        SpecField(title: 'Range', details: range),
                        SpecField(title: 'Cast Time', details: castTime),
                        SpecField(title: 'Components', details: comp),
                        SpecField(title: 'Duration', details: duration),
                      ],
                    ),
                    Divider(
                        height: 1,
                        color: Theme.of(context).colorScheme.primary),
                    const SizedBox(height: 16),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
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
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
