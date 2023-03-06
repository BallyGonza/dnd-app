import 'package:flutter/material.dart';

class BackstoryCard extends StatelessWidget {
  const BackstoryCard({Key? key, required this.backstory}) : super(key: key);

  final String backstory;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(bottom: 80),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
              child: Text(
                backstory,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
