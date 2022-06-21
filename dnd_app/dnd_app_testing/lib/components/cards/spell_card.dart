import 'package:flutter/material.dart';
import '../../models/spell.dart';

class SpellCard extends StatefulWidget {
  final Spell spell;
  const SpellCard({Key? key, required this.spell}) : super(key: key);

  @override
  State<SpellCard> createState() => _SpellCardState();
}

class _SpellCardState extends State<SpellCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
      child: Card(
        child: ExpansionTile(
            title:
                Text(widget.spell.name, style: const TextStyle(fontSize: 20)),
            subtitle: Text(
              'Level ${widget.spell.level}',
              style: const TextStyle(color: Colors.grey),
            ),
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.purple),
                    left: BorderSide(color: Colors.purple),
                    right: BorderSide(color: Colors.purple),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 4, bottom: 4),
                  child: Row(
                    children: [
                      const Text('RANGE: ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(widget.spell.range,
                          style: const TextStyle(fontSize: 15)),
                      Expanded(child: Container()),
                      const Text('CAST TIME: ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(widget.spell.castTime,
                          style: const TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.purple),
                    left: BorderSide(color: Colors.purple),
                    right: BorderSide(color: Colors.purple),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 4, bottom: 4),
                  child: Row(
                    children: [
                      const Text('COMP: ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      for (final comp in widget.spell.comp)
                        Text(comp, style: const TextStyle(fontSize: 15)),
                      Expanded(child: Container()),
                      const Text('DURATION: ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(widget.spell.duration,
                          style: const TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.purple),
                    left: BorderSide(color: Colors.purple),
                    right: BorderSide(color: Colors.purple),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 4, bottom: 4),
                  child: Column(
                    children: [
                      for (final description in widget.spell.description)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Text(description,
                              style: const TextStyle(fontSize: 15)),
                        ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
