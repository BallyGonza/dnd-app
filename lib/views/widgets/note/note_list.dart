import 'package:dnd_app/blocs/blocs.dart';
import 'package:dnd_app/views/widgets/note/note_page.dart';
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
  final format = DateFormat('hh:mm | MM/dd/yyyy');

  @override
  void initState() {
    context.read<LootBloc>().add(const LootEvent.init());
    context.read<WalletBloc>().add(const WalletEvent.init());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: BlocBuilder<LootBloc, LootState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                initial: () => const CircularProgressIndicator(),
                loaded: (notes) => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.58,
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
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: notes[index].content.length > 100 ||
                                  notes[index].content.contains('\n')
                              ? 150
                              : notes[index].content.isEmpty ||
                                      notes[index].title.isEmpty
                                  ? notes[index].content.length > 50 ||
                                          notes[index].content.contains('\n')
                                      ? 120
                                      : notes[index].content.length > 25 ||
                                              notes[index]
                                                  .content
                                                  .contains('\n')
                                          ? 110
                                          : 90
                                  : 110,
                          child: InkWell(
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
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => BlocProvider.value(
                                      value: context.read<LootBloc>(),
                                      child: NotePage(
                                        note: notes[index],
                                        buttonText: 'Edit',
                                        onSaved: (title, content, color) {
                                          setState(() {
                                            context.read<LootBloc>().add(
                                                  LootEvent.edit(
                                                    index,
                                                    Note(
                                                      title: title,
                                                      content: content,
                                                      date: format.format(
                                                          DateTime.now()),
                                                      color: color,
                                                    ),
                                                  ),
                                                );
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
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
          alignment: Alignment.bottomRight,
          child: Container(
            width: 56,
            height: 45,
            margin: const EdgeInsets.only(
              right: 16,
              bottom: 71,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const CircleBorder(),
              ),
              onPressed: () {
                titleController.clear();
                contentController.clear();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => BlocProvider.value(
                      value: context.read<LootBloc>(),
                      child: NotePage(
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
                  ),
                );
              },
              child: const Icon(Icons.add),
            ),
          ),
        ),
        BlocBuilder<WalletBloc, WalletState>(
          builder: (context, state) {
            return Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(
                  bottom: 5,
                ),
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 20,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => setState(() {
                        context.read<WalletBloc>().add(
                              const WalletEvent.add('copper'),
                            );
                      }),
                      onDoubleTap: () => setState(() {
                        context.read<WalletBloc>().add(
                              const WalletEvent.subtract('copper'),
                            );
                      }),
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.brown[300]!,
                            ),
                          ),
                          width: 45,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Text('${state.wallet.copperPieces}'),
                              Text(
                                'CP',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown[300]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => setState(() {
                        context.read<WalletBloc>().add(
                              const WalletEvent.add('silver'),
                            );
                      }),
                      onDoubleTap: () => setState(() {
                        context.read<WalletBloc>().add(
                              const WalletEvent.subtract('silver'),
                            );
                      }),
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          width: 45,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Text('${state.wallet.silverPieces}'),
                              const Text(
                                'SP',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => setState(() {
                        context.read<WalletBloc>().add(
                              const WalletEvent.add('electrum'),
                            );
                      }),
                      onDoubleTap: () => setState(() {
                        context.read<WalletBloc>().add(
                              const WalletEvent.subtract('electrum'),
                            );
                      }),
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[600]!,
                            ),
                          ),
                          width: 45,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Text('${state.wallet.electrumPieces}'),
                              Text(
                                'EP',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => setState(() {
                        context.read<WalletBloc>().add(
                              const WalletEvent.add('gold'),
                            );
                      }),
                      onDoubleTap: () => setState(() {
                        context.read<WalletBloc>().add(
                              const WalletEvent.subtract('gold'),
                            );
                      }),
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.yellow[700]!,
                            ),
                          ),
                          width: 45,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Text('${state.wallet.goldPieces}'),
                              Text(
                                'GP',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow[700]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => setState(() {
                        context.read<WalletBloc>().add(
                              const WalletEvent.add('platinum'),
                            );
                      }),
                      onDoubleTap: () => setState(() {
                        context.read<WalletBloc>().add(
                              const WalletEvent.subtract('platinum'),
                            );
                      }),
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300]!,
                            ),
                          ),
                          width: 45,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Text('${state.wallet.platinumPieces}'),
                              Text(
                                'PP',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[300],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }
}

// BlocBuilder<WalletBloc, WalletState>(
//   builder: (context, state) {
//     return state.maybeWhen(
//       orElse: () => const SizedBox(),
//       init: () => const SizedBox(),
//       updated: (wallet) => Padding(
//         padding: const EdgeInsets.only(left: 20),
//         child: Row(
//           children: [
//             Text(
//               wallet.copperPieces.toString(),
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(width: 10),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 shape: const CircleBorder(),
//               ),
//               onPressed: () {
//                 setState(() {
//                   context.read<WalletBloc>().add(
//                         const WalletEvent.add('copperPieces'),
//                       );
//                 });
//               },
//               child: const Icon(Icons.add),
//             ),
//           ],
//         ),
//       ),
//     );
//   },
// ),
