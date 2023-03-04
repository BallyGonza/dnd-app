import 'package:dnd_app/logic/logic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  const NoteList({super.key});

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  @override
  void initState() {
    context.read<LootBloc>().add(const LootEvent.init());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final contentController = TextEditingController();
    return Column(
      children: [
        BlocBuilder<LootBloc, LootState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const CircularProgressIndicator(),
              loaded: (state) => SizedBox(
                height: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.notes.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onLongPress: () {
                        setState(() {
                          context.read<LootBloc>().add(
                                LootEvent.delete(index),
                              );
                        });
                      },
                      child: NoteWidget(
                        title: state.notes[index].title,
                        content: state.notes[index].content,
                        date: state.notes[index].date,
                        color: state.notes[index].color,
                        index: index,
                      ),
                    );
                  },
                ),
              ),
              updated: (state) => SizedBox(
                height: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.notes.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onLongPress: () {
                        setState(() {
                          context.read<LootBloc>().add(
                                LootEvent.delete(index),
                              );
                        });
                      },
                      child: NoteWidget(
                        title: state.notes[index].title,
                        content: state.notes[index].content,
                        date: state.notes[index].date,
                        color: state.notes[index].color,
                        index: index,
                      ),
                    );
                  },
                ),
              ),
            );

            // ? const Text('No notes')
            // : ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: state.notes.length,
            //     itemBuilder: (context, index) {
            //       return GestureDetector(
            //         onLongPress: () {
            //           setState(() {
            //             context.read<LootBloc>().add(
            //                   LootEvent.delete(index),
            //                 );
            //           });
            //         },
            //         child: NoteWidget(
            //           title: state.notes[index].title,
            //           content: state.notes[index].content,
            //           date: state.notes[index].date,
            //           color: state.notes[index].color,
            //           index: index,
            //         ),
            //       );
            //     },
            //   );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // text field for title
            SizedBox(
              width: 100,
              child: TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  hintText: 'Title',
                ),
              ),
            ),
            // text field for content
            SizedBox(
              width: 100,
              child: TextField(
                controller: contentController,
                decoration: const InputDecoration(
                  hintText: 'Content',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  context.read<LootBloc>().add(
                        LootEvent.add(
                          Note(
                            title: titleController.text,
                            content: contentController.text,
                            date: DateTime.now().toString(),
                            color: Colors.black.value,
                          ),
                        ),
                      );
                  contentController.clear();
                  titleController.clear();
                });
              },
              child: const Text('Add Note'),
            ),
            // text field for content
            // SizedBox(
            //   width: 100,
            //   child: TextField(
            //     controller: contentController,
            //     decoration: const InputDecoration(
            //       hintText: 'Content',
            //     ),
            //   ),
            // ),
            // button to add note
          ],
        ),
      ],
    );
  }
}
