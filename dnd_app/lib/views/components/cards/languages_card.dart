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
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      'Languages',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 4, bottom: 4, left: 15, right: 15),
                child: Container(
                  height: 0.5,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 4),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.languages,
                        style: const TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
