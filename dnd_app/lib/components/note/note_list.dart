import 'package:dnd_app/components/components.dart';
import 'package:dnd_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final contentController = TextEditingController();
    return Column(
      children: [
        ValueListenableBuilder(
          valueListenable: Hive.box<Note>('notes_box').listenable(),
          builder: (context, Box<Note> box, _) {
            return SizedBox(
              height: 450,
              child: box.length == 0
                  ? const Center(
                      child: Text('No notes yet'),
                    )
                  : ListView.builder(
                      itemCount: box.length,
                      itemBuilder: (context, index) {
                        final note = box.getAt(index);
                        return GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10),
                                  ),
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
                                        TextFormField(
                                          onChanged: (value) {
                                            note!.title = value;
                                          },
                                          controller: TextEditingController(
                                              text: note!.title),
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          onChanged: (value) {
                                            note.content = value;
                                          },
                                          controller: TextEditingController(
                                            text: note.content,
                                          ),
                                          maxLines: 11,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.4,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.black,
                                                ),
                                                onPressed: () {
                                                  box.putAt(
                                                    index,
                                                    Note(
                                                      title:
                                                          TextEditingController(
                                                        text: note.title,
                                                      ).text,
                                                      content:
                                                          TextEditingController(
                                                        text: note.content,
                                                      ).text,
                                                      date: DateTime.now()
                                                          .toString(),
                                                      color: note.color,
                                                    ),
                                                  );
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Update'),
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.4,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.black,
                                                ),
                                                onPressed: () {
                                                  box.deleteAt(index);
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Delete'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: NoteWidget(
                            title: note!.title,
                            content: note.content,
                            date: note.date,
                            color: note.color,
                          ),
                        );
                      },
                    ),
            );
          },
        ),
        // button add note
        Align(
          alignment: Alignment.bottomLeft,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const CircleBorder(),
            ),
            onLongPress: () {
              Hive.box<Note>('notes_box').deleteAll(
                Hive.box<Note>('notes_box').keys,
              );
            },
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
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Add Loot',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: titleController,
                          decoration: const InputDecoration(
                            hintText: 'Title',
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: contentController,
                          maxLines: 11,
                          decoration: const InputDecoration(
                            hintText: 'Content',
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            onPressed: () {
                              Hive.box<Note>('notes_box').add(
                                Note(
                                  title: titleController.text,
                                  color: Colors.lightGreen.value,
                                  date: DateTime.now().toString(),
                                  content: contentController.text,
                                ),
                              );
                              Navigator.pop(context);
                            },
                            child: const Text('Add Note'),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: const Icon(Icons.add),
          ),
        ),
        // button delete note
      ],
    );
  }
}
