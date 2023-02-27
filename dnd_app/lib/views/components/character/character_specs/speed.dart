import 'package:flutter/material.dart';

class Speed extends StatelessWidget {
  final int speed;
  final Color color;

  const Speed({Key? key, required this.speed, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              '$speed',
              style: TextStyle(fontSize: 20, color: color),
            ),
            Text(
              'FT',
              style: TextStyle(fontSize: 10, color: color),
            ),
          ],
        ),
        Text(
          'SPEED',
          style: TextStyle(fontSize: 9, color: color),
        ),
      ],
    );
  }
}
