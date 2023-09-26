import 'package:flutter/material.dart';

class Speed extends StatelessWidget {
  const Speed({required this.speed, required this.color, super.key});
  final int speed;
  final Color color;

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
              'Mts',
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
