import 'package:flutter/material.dart';

class HpController extends StatefulWidget {
  HpController(
      {Key? key,
      required this.maxHp,
      required this.currentHp,
      required this.color})
      : super(key: key);

  int maxHp;
  int currentHp;
  final Color color;

  @override
  State<HpController> createState() => _HpControllerState();
}

class _HpControllerState extends State<HpController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.green.shade300,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text(
              'HIT POINTS',
              style: TextStyle(
                fontSize: 8,
                color: widget.color,
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (widget.currentHp > 0) {
                        widget.currentHp--;
                      }
                    });
                  },
                  child: Text(
                    ' ${widget.currentHp}',
                    style: TextStyle(
                      fontSize: 20,
                      color: widget.color,
                    ),
                  ),
                ),
                Text(
                  '/',
                  style: TextStyle(
                    fontSize: 20,
                    color: widget.color,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (widget.currentHp < widget.maxHp) {
                        widget.currentHp++;
                      }
                    });
                  },
                  child: Text(
                    '${widget.maxHp} ',
                    style: TextStyle(
                      fontSize: 20,
                      color: widget.color,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
