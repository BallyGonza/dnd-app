import 'package:flutter/material.dart';

class NavigationBarButton extends StatelessWidget {
  const NavigationBarButton({
    required this.name,
    required this.indexButton,
    required this.selected,
    required this.onPressed,
    super.key,
  });
  final String name;
  final int indexButton;
  final int selected;
  final Function(int) onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(indexButton),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              color: selected == indexButton ? Colors.black : Colors.grey[400],
            ),
          ),
          Container(
            height: 2,
            width: 20,
            color: selected == indexButton
                ? Colors.green[200]
                : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
