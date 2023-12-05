// ignore_for_file: lines_longer_than_80_chars

import 'package:dnd_app/bloc/bloc.dart';
import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/views/widgets/note/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

class NoteList extends StatefulWidget {
  const NoteList({
    required this.characterId,
    super.key,
  });

  final int characterId;

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> with TickerProviderStateMixin {
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final format = DateFormat('HH:mm | MM/dd/yyyy');
  late bool _walletOpen;
  late Color _selected;

  @override
  void initState() {
    _walletOpen = false;
    _selected = Colors.green[300]!;
    context.read<LootBloc>().add(
          LootEvent.init(
            widget.characterId,
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (_walletOpen)
          WalletList(
            characterId: widget.characterId,
          )
        else
          SingleChildScrollView(
            child: BlocBuilder<LootBloc, LootState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const CircularProgressIndicator(),
                  loaded: (notes) => notes.isEmpty
                      ? const NoNotes()
                      : SizedBox(
                          height: MediaQuery.of(context).size.height * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: ListView.separated(
                              padding: EdgeInsets.zero,
                              itemCount: notes.length,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                height: 10,
                              ),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Slidable(
                                  key: ValueKey(notes[index]),
                                  endActionPane: ActionPane(
                                    extentRatio: 0.25,
                                    dragDismissible: false,
                                    motion: const ScrollMotion(),
                                    children: [
                                      _deleteAction(index),
                                    ],
                                  ),
                                  child: NoteListItem(
                                    title: notes[index].title,
                                    content: notes[index].content,
                                    date: notes[index].date,
                                    color: notes[index].color,
                                    index: index,
                                    onTap: () {
                                      _editLoot(notes, index, context);
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                );
              },
            ),
          ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 8),
            child: Row(
              children: [
                NewLootButton(
                  onPressed: () => _newLoot(context),
                ),
                WalletButton(
                  onPressed: () {
                    setState(() {
                      _walletOpen = !_walletOpen;
                      _selected =
                          _walletOpen ? Colors.grey : Colors.green[300]!;
                    });
                  },
                  selected: _selected,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  SlidableAction _deleteAction(int index) {
    return SlidableAction(
      padding: const EdgeInsets.all(10),
      borderRadius: BorderRadius.circular(10),
      onPressed: (context) {
        // dialog for delete
        showDialog<CustomShowDialog>(
          context: context,
          builder: (context) => CustomShowDialog(
            title: 'Delete Note',
            content: const Text(
              'Are you sure you want to delete this note?',
            ),
            rightActionName: 'Delete',
            onPressed: () {
              setState(() {
                context.read<LootBloc>().add(
                      LootEvent.delete(index),
                    );
              });
            },
          ),
        );
      },
      backgroundColor: const Color(0xFFFE4A49),
      foregroundColor: Colors.white,
      icon: Icons.delete,
      label: 'Delete',
    );
  }

  void _editLoot(List<Note> notes, int index, BuildContext context) {
    titleController.text = notes[index].title;
    contentController.text = notes[index].content;
    Navigator.of(context).push(
      MaterialPageRoute<NotePage>(
        builder: (_) => NotePage(
          isNewNote: false,
          note: notes[index],
          buttonText: 'Edit',
          onSaved: (title, content, color) {
            setState(
              () {
                context.read<LootBloc>().add(
                      LootEvent.edit(
                        index,
                        Note(
                          id: notes[index].id,
                          title: title,
                          content: content,
                          date: format.format(DateTime.now()),
                          color: color,
                        ),
                      ),
                    );
              },
            );
          },
        ),
      ),
    );
  }

  void _newLoot(BuildContext context) {
    titleController.clear();
    contentController.clear();
    Navigator.of(context).push(
      MaterialPageRoute<NotePage>(
        builder: (_) => NotePage(
          isNewNote: true,
          note: Note(
            id: 0,
            date: format.format(DateTime.now()),
            color: Colors.white.value,
            title: '',
            content: '',
          ),
          buttonText: 'Add',
          onSaved: (title, content, color) {
            setState(() {
              context.read<LootBloc>().add(
                    LootEvent.add(
                      Note(
                        id: DateTime.now().millisecondsSinceEpoch,
                        title: title,
                        content: content,
                        date: format.format(DateTime.now()),
                        color: color,
                      ),
                    ),
                  );
            });
          },
        ),
      ),
    );
  }
}
