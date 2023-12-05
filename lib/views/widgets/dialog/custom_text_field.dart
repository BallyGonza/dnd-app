import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hint,
    required this.controller,
    this.focusNode,
    super.key,
  });

  final String hint;
  final FocusNode? focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode ?? FocusNode()
        ..requestFocus(),
      controller: controller,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        hintText: hint,
      ),
    );
  }
}
