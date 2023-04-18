import 'package:flutter/material.dart';

class CustomShowDialog extends StatelessWidget {
  const CustomShowDialog(
      {required this.title,
      required this.content,
      required this.onPressed,
      required this.rightActionName,
      super.key});

  final String title;
  final Widget content;
  final VoidCallback onPressed;
  final String rightActionName;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Text(title),
      content: content,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onPressed();
          },
          child: Text(rightActionName,
              style: const TextStyle(color: Colors.green)),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel', style: TextStyle(color: Colors.red)),
        ),
      ],
    );
  }
}
