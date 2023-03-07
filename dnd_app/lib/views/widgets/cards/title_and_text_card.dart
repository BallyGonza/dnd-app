import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class TitleTextCard extends StatelessWidget {
  final String title;
  final String text;

  const TitleTextCard({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: BorderSide(
            color: Theme.of(context).dividerColor,
            width: 1,
          ),
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
