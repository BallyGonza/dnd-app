import 'package:dnd_app/logic/logic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NoteList extends StatefulWidget {
  const NoteList({Key? key}) : super(key: key);

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  @override
  void initState() {
    context.read<LootBloc>().add(const LootEvent.init());
    super.initState();
  }

  final format = DateFormat('hh:mm ~ MM/dd/yyyy');

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
                height: 450,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.notes.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onLongPress: () {
                        setState(() {
                          context.read<LootBloc>().add(LootEvent.delete(index));
                        });
                      },
                      child: NoteWidget(
                        title: state.notes[index].title,
                        content: state.notes[index].content,
                        date: state.notes[index].date,
                        color: state.notes[index].color,
                        index: index,
                        onTap: () {
                          titleController.text = state.notes[index].title;
                          contentController.text = state.notes[index].content;
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            context: context,
                            builder: (_) {
                              return BlocProvider.value(
                                value: context.read<LootBloc>(),
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Edit Note',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      TextField(
                                        controller: titleController,
                                        decoration: const InputDecoration(
                                          labelText: 'Title',
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      TextField(
                                        controller: contentController,
                                        decoration: const InputDecoration(
                                          labelText: 'Content',
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            context.read<LootBloc>().add(
                                                  LootEvent.edit(
                                                    index,
                                                    Note(
                                                      color: state
                                                          .notes[index].color,
                                                      title:
                                                          titleController.text,
                                                      content: contentController
                                                          .text,
                                                      date: format.format(
                                                        DateTime.now(),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                          });
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Update'),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const CircleBorder(),
            ),
            onPressed: () {
              titleController.clear();
              contentController.clear();
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (_) {
                  return BlocProvider.value(
                    value: context.read<LootBloc>(),
                    child: Container(
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
                                setState(() {
                                  context.read<LootBloc>().add(
                                        LootEvent.add(
                                          Note(
                                            title: titleController.text,
                                            color: Colors.black.value,
                                            date: format.format(DateTime.now()),
                                            content: contentController.text,
                                          ),
                                        ),
                                      );
                                });
                                Navigator.pop(context);
                              },
                              child: const Text('Add Loot'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
