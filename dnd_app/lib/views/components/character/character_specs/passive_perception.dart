import 'package:flutter/material.dart';

class PassivePerception extends StatelessWidget {
  final int passivePerception;
  final Color color;

  const PassivePerception(
      {Key? key, required this.passivePerception, required this.color})
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
              '$passivePerception',
              style: TextStyle(fontSize: 20, color: color),
            ),
          ],
        ),
        Text(
          'PASSIVE',
          style: TextStyle(fontSize: 9, color: color),
        ),
        Text(
          'PERCEPTION',
          style: TextStyle(fontSize: 9, color: color),
        ),
      ],
    );
  }
}
