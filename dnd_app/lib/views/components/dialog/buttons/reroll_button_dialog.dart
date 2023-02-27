import 'package:flutter/material.dart';

class ButtonReRoll extends StatelessWidget {
  final Function onPressed;
  const ButtonReRoll({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        onPressed();
      },
      child: const Text('Re-Roll'),
    );
  }
}
