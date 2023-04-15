import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'character_event.dart';
import 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc() : super(const CharacterState.initial()) {
    on<CharacterInitialEvent>(_onInit);

    add(const CharacterEvent.init());
  }

  final Box<Character> box = Hive.box<Character>('characters_box');
  final List<Character> characters = defaultCharacters;

  Future<void> _onInit(
    CharacterInitialEvent event,
    Emitter<CharacterState> emit,
  ) async {
    for (final character in characters) {
      if (!box.containsKey(character.id)) {
        await box.put(character.id, character);
      }
    }

    emit(CharacterState.updated(characters));
  }
}
