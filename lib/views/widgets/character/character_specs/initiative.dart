import 'package:flutter/material.dart';

class Initiative extends StatelessWidget {
  const Initiative({
    required this.initiative,
    required this.color,
    super.key,
  });
  final int initiative;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            if (initiative > 0)
              Text(
                '+',
                style: TextStyle(fontSize: 15, color: color),
              )
            else
              const SizedBox.shrink(),
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
