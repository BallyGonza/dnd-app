import 'package:dnd_app/blocs/blocs.dart';
import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharacterBloc(
        CharacterRepository(),
      ),
      child: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          return state.maybeWhen(
            updated: (characters) {
              return ListView.builder(
                itemCount: characters.length,
                itemBuilder: (context, index) {
                  return CharacterCard(
                    character: characters[index],
                  );
                },
              );
            },
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
