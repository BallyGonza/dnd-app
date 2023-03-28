import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class SumRollRow extends StatelessWidget {
  const SumRollRow({
    super.key,
    required this.modifier,
    required this.roll,
    required this.dice,
    required this.thrashRoll,
  });

  final int modifier;
  final int roll;
  final int thrashRoll;
  final Dice dice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                dice.img,
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 10),
              RollText(
                roll: roll,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Row(
                children: [
                  thrashRoll != 0
                      ? Opacity(
                          opacity: 0.3,
                          child: Text(
                            ' ($thrashRoll)',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
              const SizedBox(width: 10),
              PlusMinusIcon(modifier: modifier),
              const SizedBox(width: 10),
              Text(
                '${modifier.abs()}',
                style: TextStyle(
                  fontSize: 20,
                  color: modifier < 0
                      ? Colors.red
                      : modifier > 0
                          ? Colors.green
                          : Colors.grey,
                ),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_forward,
                size: 20,
              ),
              const SizedBox(width: 10),
              Text(
                '${roll + modifier}',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
