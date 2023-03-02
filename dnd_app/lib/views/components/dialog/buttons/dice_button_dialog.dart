import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class DiceButton extends StatelessWidget {
  const DiceButton({
    Key? key,
    required this.onPressed,
    required this.dice,
  }) : super(key: key);

  final Function onPressed;
  final Dice dice;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SizedBox(
          width: 60,
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            onPressed: () {
              onPressed();
            },
            child: Image(
              image: AssetImage(dice.img),
              color: Colors.white,
              height: 30,
              width: 30,
            ),
          ),
        ),
      ),
    );
  }
}
