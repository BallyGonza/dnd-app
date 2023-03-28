import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewLootButton extends StatelessWidget {
  const NewLootButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
      ),
      onPressed: () => onPressed(),
      child: const FaIcon(
        FontAwesomeIcons.plus,
        color: Colors.white,
      ),
    );
  }
}
