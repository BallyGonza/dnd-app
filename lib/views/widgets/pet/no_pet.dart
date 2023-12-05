import 'package:flutter/material.dart';

class NoPet extends StatelessWidget {
  const NoPet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.47,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              'assets/images/wallpapers/treasure_no_background.png',
            ),
            height: 300,
          ),
          Text(
            "You don't have any Pets...",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xFFA9A9A9),
            ),
          ),
        ],
      ),
    );
  }
}
