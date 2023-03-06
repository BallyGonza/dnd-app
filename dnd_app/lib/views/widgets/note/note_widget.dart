import 'package:flutter/material.dart';

class NoteListItem extends StatelessWidget {
  const NoteListItem({
    Key? key,
    required this.onTap,
    required this.title,
    required this.content,
    required this.date,
    required this.color,
    required this.index,
  }) : super(key: key);

  final String title;
  final String content;
  final String date;
  final int color, index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black.withOpacity(0.5),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: Text(
                content,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                date,
                style: TextStyle(color: Colors.white.withOpacity(0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}