import 'package:bloc/bloc.dart';
import 'package:dnd_app/data/data.dart';

import 'loot_event.dart';
import 'loot_state.dart';

class LootBloc extends Bloc<LootEvent, LootState> {
  LootBloc() : super(const LootState.initial()) {
    on<LootInitialEvent>(_onInit);
    on<LootAddEvent>(_onAdd);
    on<LootEditEvent>(_onEdit);
    on<LootDeleteEvent>(_onDelete);
  }

  final CharacterRepository characterRepository = CharacterRepository();

  late CharacterModel character;
  late List<Note> notes;

  Future<void> _onInit(
    LootInitialEvent event,
    Emitter<LootState> emit,
  ) async {
    character = await characterRepository.getCharacter(event.characterId);
    notes = character.notes;
    emit(LootState.loaded(notes));
  }

  Future<void> _onAdd(
    LootAddEvent event,
    Emitter<LootState> emit,
  ) async {
    notes.add(event.note);
    await characterRepository.saveCharacter(character);
    emit(LootState.loaded(notes));
  }

  Future<void> _onEdit(
    LootEditEvent event,
    Emitter<LootState> emit,
  ) async {
    notes[event.index] = event.note;
    await characterRepository.saveCharacter(character);
    emit(LootState.loaded(notes));
  }

  Future<void> _onDelete(
    LootDeleteEvent event,
    Emitter<LootState> emit,
  ) async {
    notes.removeAt(event.index);
    await characterRepository.saveCharacter(character);
    emit(LootState.loaded(notes));
  }
}
