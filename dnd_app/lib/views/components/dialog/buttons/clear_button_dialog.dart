import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {
  const ClearButton({
    Key? key,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
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
            child: const Icon(
              Icons.clear,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
