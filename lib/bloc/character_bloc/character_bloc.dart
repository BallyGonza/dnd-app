import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'character_event.dart';
import 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc(
    CharacterRepository characterRepository,
  ) : super(const CharacterState.initial()) {
    on<CharacterInitialEvent>(_onInit);

    add(const CharacterEvent.init());
  }

  final CharacterRepository characterRepository = CharacterRepository();

  Future<void> _onInit(
    CharacterInitialEvent event,
    Emitter<CharacterState> emit,
  ) async {
    final characters = await characterRepository.getDefaultCharacters();
    for (final character in characters) {
      await characterRepository.addCharacterIfNotExists(character);
    }
    emit(CharacterState.updated(characters));
  }
}
