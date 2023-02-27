import 'package:flutter/material.dart';

class BackstoryCard extends StatelessWidget {
  const BackstoryCard({Key? key, required this.backstory}) : super(key: key);

  final List<String> backstory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final details in backstory)
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
            child: Text(
              details,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),
            ),
          ),
      ],
    );
  }
}
