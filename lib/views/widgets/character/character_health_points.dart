import 'package:dnd_app/bloc/bloc.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterHealthPoints extends StatefulWidget {
  const CharacterHealthPoints({
    Key? key,
    required this.character,
    required this.max,
    required this.color,
  }) : super(key: key);

  final int max;
  final Color color;
  final CharacterModel character;

  @override
  State<CharacterHealthPoints> createState() => _CharacterHealthPointsState();
}

class _CharacterHealthPointsState extends State<CharacterHealthPoints> {
  @override
  void initState() {
    context
        .read<CharacterHealthPointsBloc>()
        .add(CharacterHealthPointsEvent.init(widget.character.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.green.shade300,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            const Text(
              'HIT POINTS',
              style: TextStyle(
                fontSize: 8,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<CharacterHealthPointsBloc>()
                        .add(const CharacterHealthPointsEvent.subtract());
                  },
                  child: BlocBuilder<CharacterHealthPointsBloc,
                      CharacterHealthPointsState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loaded: (current) {
                          return Text(
                            '$current',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          );
                        },
                        orElse: () {
                          return const Text(
                            '-',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                const Text(
                  '/',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<CharacterHealthPointsBloc>()
                        .add(const CharacterHealthPointsEvent.add());
                  },
                  child: Text(
                    '${widget.max}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
