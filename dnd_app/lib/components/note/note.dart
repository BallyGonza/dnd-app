import 'package:dnd_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget(
      {super.key,
      required this.title,
      required this.content,
      required this.date,
      required this.color});

  final String title;
  final String content;
  final String date;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              title,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            subtitle: Text(
              content,
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                Hive.box<Note>('notes_box').delete(
                  Hive.box<Note>('notes_box').values.toList().indexWhere(
                        (element) =>
                            element.title == title &&
                            element.content == content &&
                            element.date == date &&
                            element.color == color,
                      ),
                );
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              date,
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
