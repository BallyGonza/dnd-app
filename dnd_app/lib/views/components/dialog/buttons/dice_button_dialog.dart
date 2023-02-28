import 'package:flutter/material.dart';

class DiceButton extends StatelessWidget {
  const DiceButton({
    Key? key,
    required this.onPressed,
    required this.color,
    required this.img,
  }) : super(key: key);

  final Function onPressed;
  final String img;
  final Color color;

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
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            onPressed: () {
              onPressed();
            },
            child: Image(
              image: AssetImage(img),
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
