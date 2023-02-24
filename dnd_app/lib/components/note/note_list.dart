import 'package:dnd_app/components/note/note.dart';
import 'package:flutter/material.dart';

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 210,
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Note();
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: 'Title',
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const TextField(
                              maxLines: 11,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: 'Note',
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Save'),
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: const Text('Add Note')),
        ),
      ],
    );
  }
}
