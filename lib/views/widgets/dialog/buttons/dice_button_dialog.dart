import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class DiceButton extends StatefulWidget {
  const DiceButton({
    Key? key,
    required this.onPressed,
    required this.dice,
  }) : super(key: key);

  final Function onPressed;
  final DiceModel dice;

  @override
  State<DiceButton> createState() => _DiceButtonState();
}

class _DiceButtonState extends State<DiceButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        onPressed: () async {
          await _controller.forward(from: 0.0);
          widget.onPressed();
        },
        child: RotationTransition(
          turns: Tween(begin: 0.0, end: 1.0).animate(
            _controller,
          ),
          child: Image(
            image: AssetImage(widget.dice.img),
            color: Colors.white,
            height: 30,
            width: 30,
          ),
        ),
      ),
    );
  }
}
