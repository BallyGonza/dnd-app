import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class BackgroundCard extends StatefulWidget {
  final Background background;
  const BackgroundCard({Key? key, required this.background}) : super(key: key);

  @override
  State<BackgroundCard> createState() => _BackgroundCardState();
}

class _BackgroundCardState extends State<BackgroundCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        child: ExpansionTile(
          title: Text(widget.background.name,
              style: const TextStyle(fontSize: 20)),
          childrenPadding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 16),
          expandedAlignment: Alignment.centerLeft,
          children: <Widget>[
            Text(
              widget.background.description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
