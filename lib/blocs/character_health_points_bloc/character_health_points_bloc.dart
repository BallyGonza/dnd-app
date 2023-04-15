import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'character_health_points_event.dart';
import 'character_health_points_state.dart';

class CharacterHealthPointsBloc
    extends Bloc<CharacterHealthPointsEvent, CharacterHealthPointsState> {
  CharacterHealthPointsBloc(
    CharacterRepository characterRepository,
  ) : super(const CharacterHealthPointsState.initial()) {
    on<CharacterHealthPointsInitialEvent>(_onInit);
    on<CharacterHealthPointsAddEvent>(_onAdd);
    on<CharacterHealthPointsSubtractEvent>(_onSubtract);
    on<CharacterHealthPointsResetEvent>(_onReset);
  }

  final CharacterRepository characterRepository = CharacterRepository();
  late Character character;
  final Box<Character> box = Hive.box<Character>('characters_box');

  Future<void> _onInit(
    CharacterHealthPointsInitialEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) async {
    character = await characterRepository.getCharacter(
      event.characterId,
    );
    emit(CharacterHealthPointsState.updated(character.healthPoints.current));
  }

  void _onAdd(
    CharacterHealthPointsAddEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    character.healthPoints.add();
    box.put(character.id, character);
    emit(CharacterHealthPointsState.updated(character.healthPoints.current));
  }

  void _onSubtract(
    CharacterHealthPointsSubtractEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    character.healthPoints.subtract();
    box.put(character.id, character);
    emit(CharacterHealthPointsState.updated(character.healthPoints.current));
  }

  void _onReset(
    CharacterHealthPointsResetEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    character.healthPoints.reset();
    box.put(character.id, character);
    emit(CharacterHealthPointsState.updated(character.healthPoints.current));
  }
}
