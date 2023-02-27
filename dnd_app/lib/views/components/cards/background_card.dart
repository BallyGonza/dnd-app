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
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.background.name,
                      style: const TextStyle(
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
                        widget.background.description,
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
