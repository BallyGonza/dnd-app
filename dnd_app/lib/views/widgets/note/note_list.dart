import 'package:dnd_app/blocs/blocs.dart';
import 'package:dnd_app/views/widgets/note/note_modal.dart';
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
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final format = DateFormat('hh:mm ~ MM/dd/yyyy');

  @override
  void initState() {
    context.read<LootBloc>().add(const LootEvent.init());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: BlocBuilder<LootBloc, LootState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                initial: () => const CircularProgressIndicator(),
                loaded: (notes) => SizedBox(
                  height: 505,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(
                      bottom: 25,
                    ),
                    shrinkWrap: true,
                    itemCount: notes.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onLongPress: () {
                          setState(() {
                            context
                                .read<LootBloc>()
                                .add(LootEvent.delete(index));
                          });
                        },
                        child: NoteListItem(
                          title: notes[index].title,
                          content: notes[index].content,
                          date: notes[index].date,
                          color: notes[index].color,
                          index: index,
                          onTap: () {
                            titleController.text = notes[index].title;
                            contentController.text = notes[index].content;
                            showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                              ),
                              context: context,
                              builder: (_) {
                                return BlocProvider.value(
                                  value: context.read<LootBloc>(),
                                  child: NoteModal(
                                    title: notes[index].title,
                                    content: notes[index].content,
                                    buttonText: 'Edit',
                                    onSaved: (title, content) {
                                      setState(() {
                                        context.read<LootBloc>().add(
                                              LootEvent.edit(
                                                index,
                                                Note(
                                                  title: title,
                                                  content: content,
                                                  date: format
                                                      .format(DateTime.now()),
                                                  color: notes[index].color,
                                                ),
                                              ),
                                            );
                                      });
                                    },
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
        ),
        const Spacer(),
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
                    child: NoteModal(
                      title: '',
                      content: '',
                      buttonText: 'Add',
                      onSaved: (title, content) {
                        setState(() {
                          context.read<LootBloc>().add(
                                LootEvent.add(
                                  Note(
                                    title: title,
                                    content: content,
                                    date: format.format(DateTime.now()),
                                    color: Colors.black.value,
                                  ),
                                ),
                              );
                        });
                      },
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
