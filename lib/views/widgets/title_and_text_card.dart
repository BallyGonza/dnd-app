import 'package:flutter/material.dart';

class TitleAndTextCard extends StatelessWidget {
  final String title;
  final String text;

  const TitleAndTextCard({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
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
                    left: 16.0,
                    top: 10.0,
                    right: 16.0,
                    bottom: 10.0,
                  ),
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 55,
            padding: const EdgeInsets.only(left: 16.0, top: 16.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/wallpapers/title_background.png'),
                  fit: BoxFit.fill),
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
