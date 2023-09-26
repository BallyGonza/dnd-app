import 'package:dnd_app/bloc/bloc.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterHealthPoints extends StatefulWidget {
  const CharacterHealthPoints({
    required this.character,
    required this.max,
    required this.color,
    super.key,
  });

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
        .read<CharacterHPBloc>()
        .add(CharacterHPEvent.init(widget.character.id));
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
        padding: const EdgeInsets.all(5),
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
                        .read<CharacterHPBloc>()
                        .add(const CharacterHPEvent.subtract());
                  },
                  child: BlocBuilder<CharacterHPBloc, CharacterHPState>(
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
                        .read<CharacterHPBloc>()
                        .add(const CharacterHPEvent.add());
                  },
                  onLongPress: () {
                    context
                        .read<CharacterHPBloc>()
                        .add(const CharacterHPEvent.reset());
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
