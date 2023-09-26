import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/widgets/spell/spell_card/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SpellCard extends StatefulWidget {
  const SpellCard({required this.spell, super.key});
  final SpellModel spell;

  @override
  SpellCardState createState() => SpellCardState();
}

class SpellCardState extends State<SpellCard> with TickerProviderStateMixin {
  bool isExpanded = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Card(
        color: Colors.purple[100],
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                  isExpanded ? _controller.forward() : _controller.reverse();
                });
              },
              child: SpellNameContainer(spellName: widget.spell.name),
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              child: SizeTransition(
                sizeFactor: _controller,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    children: [
                      SpellSpecs(spell: widget.spell),
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
            ),
          ],
        ),
      ),
    );
  }
}
