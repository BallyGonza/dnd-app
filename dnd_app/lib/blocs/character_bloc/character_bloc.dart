import 'package:dnd_app/blocs/character_bloc/export.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc(
    this.characterRepository,
  ) : super(const CharacterState.initial()) {
    on<CharacterInitialEvent>(_onInit);
    on<CharacterAddEvent>(_onAdd);
    on<CharacterSubtractEvent>(_onRemove);

    add(const CharacterEvent.init());
  }

  final CharacterRepository characterRepository;
  late List<Character> defaultCharacters;
  List<Character> characters = [];
  final Box<Character> box = Hive.box<Character>('characters_box');

  void _onInit(
    CharacterInitialEvent event,
    Emitter<CharacterState> emit,
  ) async {
    defaultCharacters = await characterRepository.getCharacters();
    for (final character in defaultCharacters) {
      if (!box.containsKey(character.id)) {
        await box.put(character.id, character);
      }
    }
    for (final character in defaultCharacters) {
      characters.add(box.get(character.id)!);
    }

    emit(CharacterState.updated(characters));
  }

  void _onAdd(
    CharacterAddEvent event,
    Emitter<CharacterState> emit,
  ) {
    emit(CharacterState.updated(characters));
  }

  void _onRemove(
    CharacterSubtractEvent event,
    Emitter<CharacterState> emit,
  ) {
    emit(CharacterState.updated(characters));
  }

  CharacterState? fromJson(Map<String, dynamic> json) {
    return CharacterState.fromJson(json);
  }

  Map<String, dynamic>? toJson(CharacterState state) {
    return state.toJson();
  }
}
