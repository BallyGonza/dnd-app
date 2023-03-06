import 'package:flutter/material.dart';

class LanguagesCard extends StatefulWidget {
  const LanguagesCard({Key? key, required this.languages}) : super(key: key);

  final String languages;

  @override
  State<LanguagesCard> createState() => _LanguagesCardState();
}

class _LanguagesCardState extends State<LanguagesCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        child: ExpansionTile(
          expandedAlignment: Alignment.centerLeft,
          title: const Text('Languages', style: TextStyle(fontSize: 20)),
          childrenPadding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 16),
          children: <Widget>[
            Text(
              widget.languages,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
