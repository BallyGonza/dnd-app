import 'package:bloc/bloc.dart';
import 'package:dnd_app/data/data.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'loot_event.dart';
import 'loot_state.dart';

class LootBloc extends Bloc<LootEvent, LootState> {
  LootBloc(
    CharacterRepository characterRepository,
  ) : super(const LootState.initial()) {
    on<LootInitialEvent>(_onInit);
    on<LootAddEvent>(_onAdd);
    on<LootEditEvent>(_onEdit);
    on<LootDeleteEvent>(_onDelete);
    on<LootDeleteAllEvent>(_onDeleteAll);
  }

  final CharacterRepository characterRepository = CharacterRepository();
  late Character character;

  late List<Note> notes;
  final Box<Character> box = Hive.box<Character>('characters_box');

  Future<void> _onInit(
    LootInitialEvent event,
    Emitter<LootState> emit,
  ) async {
    character = await characterRepository.getCharacter(event.characterId);
    // character = box.get(characterIndex)!;
    notes = character.notes;
    emit(LootState.loaded(notes));
  }

  Future<void> _onAdd(
    LootAddEvent event,
    Emitter<LootState> emit,
  ) async {
    notes.add(event.note);
    await box.put(character.id, character);
    emit(LootState.loaded(notes));
  }

  Future<void> _onEdit(
    LootEditEvent event,
    Emitter<LootState> emit,
  ) async {
    notes[event.index] = event.note;
    await box.put(character.id, character);
    emit(LootState.loaded(notes));
  }

  Future<void> _onDelete(
    LootDeleteEvent event,
    Emitter<LootState> emit,
  ) async {
    notes.removeAt(event.index);
    await box.put(character.id, character);
    emit(LootState.loaded(notes));
  }

  void _onDeleteAll(
    LootDeleteAllEvent event,
    Emitter<LootState> emit,
  ) {
    for (var element in event.notes) {
      character.notes.remove(element);
    }
    box.put(character.id, character);
    emit(LootState.loaded(character.notes));
  }
}
