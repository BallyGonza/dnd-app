import 'package:flutter/material.dart';

class TitleAndChildCard extends StatelessWidget {
  final String title;
  final Widget child;

  const TitleAndChildCard({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
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
                child: child),
          ],
        ),
      ),
    );
  }
}
