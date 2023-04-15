import 'package:dnd_app/blocs/blocs.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'widgets/widgets.dart';

class NoteList extends StatefulWidget {
  const NoteList({
    required this.characterId,
    Key? key,
  }) : super(key: key);

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
    context.read<LootBloc>().add(LootEvent.init(
          widget.characterId,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _walletOpen
            ? WalletList(
                characterId: widget.characterId,
              )
            : SingleChildScrollView(
                child: BlocBuilder<LootBloc, LootState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                        orElse: () => const CircularProgressIndicator(),
                        loaded: (notes) => notes.isEmpty
                            ? const NoNotes()
                            : SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.67,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: ListView.separated(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                    ),
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
                                          motion: const ScrollMotion(),
                                          children: [
                                            SlidableAction(
                                              padding: const EdgeInsets.all(10),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              onPressed: (context) {
                                                setState(() {
                                                  context.read<LootBloc>().add(
                                                        LootEvent.delete(index),
                                                      );
                                                });
                                              },
                                              backgroundColor:
                                                  const Color(0xFFFE4A49),
                                              foregroundColor: Colors.white,
                                              icon: Icons.delete,
                                              label: 'Delete',
                                            ),
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
                              ));
                  },
                ),
              ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _editLoot(List<Note> notes, int index, BuildContext context) {
    titleController.text = notes[index].title;
    contentController.text = notes[index].content;
    Navigator.of(context).push(
      MaterialPageRoute(
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
      MaterialPageRoute(
        builder: (_) => NotePage(
          isNewNote: true,
          note: Note(
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
