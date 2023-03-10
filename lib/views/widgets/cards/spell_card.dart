import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

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
              child: Padding(
                padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.88,
                  height: 30.0,
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      textAlign: TextAlign.center,
                      widget.spell.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isExpanded,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8,
                ),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(1.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(2.0),
                                      color: Colors.white,
                                      width: 156,
                                      child: Column(
                                        children: [
                                          Text(
                                            'CASTING TIME',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Colors.purple[100]),
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            widget.spell.castTime,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(2.0),
                                      color: Colors.white,
                                      width: 156,
                                      child: Column(
                                        children: [
                                          Text(
                                            'COMPONENTS',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Colors.purple[100]),
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            widget.spell.comp,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(width: 4),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(2.0),
                                      color: Colors.white,
                                      width: 156,
                                      child: Column(
                                        children: [
                                          Text(
                                            'RANGE',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Colors.purple[100]),
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            widget.spell.range,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(2.0),
                                      color: Colors.white,
                                      width: 156,
                                      child: Column(
                                        children: [
                                          Text(
                                            'DURATION',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Colors.purple[100]),
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            widget.spell.duration,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      color: Colors.white,
                      child: Text(
                        widget.spell.description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Nivel ${widget.spell.level}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
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
