import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter test',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            subtitle: Text(
              'This is a test of the Flutter system',
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              'May 1, 2021',
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
