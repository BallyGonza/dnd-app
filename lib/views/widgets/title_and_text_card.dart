import 'package:flutter/material.dart';

class TitleAndTextCard extends StatelessWidget {
  const TitleAndTextCard({
    required this.title,
    required this.text,
    super.key,
  });
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                surfaceTintColor: Colors.white,
                color: Colors.white,
                margin: const EdgeInsets.only(top: 50),
                elevation: 5,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 10,
                    right: 16,
                    bottom: 10,
                  ),
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 55,
            padding: const EdgeInsets.only(left: 16, top: 16),
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/wallpapers/title_background.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
