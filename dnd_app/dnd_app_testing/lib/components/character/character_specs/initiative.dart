import 'package:flutter/material.dart';

class Initiative extends StatelessWidget {
  final int initiative;
  final Color color;

  const Initiative({Key? key, required this.initiative, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              '+',
              style: TextStyle(fontSize: 15, color: color),
            ),
            Text(
              '$initiative',
              style: TextStyle(fontSize: 20, color: color),
            ),
          ],
        ),
        Text(
          'INITIATIVE',
          style: TextStyle(fontSize: 9, color: color),
        ),
      ],
    );
  }
}
