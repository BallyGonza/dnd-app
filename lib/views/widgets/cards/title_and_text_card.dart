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
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 2.0, 16.0, 16.0),
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
