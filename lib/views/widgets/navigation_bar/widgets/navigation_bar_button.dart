import 'package:flutter/material.dart';

class NavigationBarButton extends StatelessWidget {
  final String name;
  final int indexButton;
  final int selected;
  final Function(int) onPressed;

  const NavigationBarButton({
    super.key,
    required this.name,
    required this.indexButton,
    required this.selected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(indexButton),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
                fontSize: 14.0,
                color:
                    selected == indexButton ? Colors.black : Colors.grey[400]),
          ),
          Container(
            height: 2.0,
            width: 20.0,
            color: selected == indexButton
                ? Colors.green[200]
                : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
