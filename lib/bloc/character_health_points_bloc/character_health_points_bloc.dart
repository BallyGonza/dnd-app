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
  late CharacterModel character;
  final Box<CharacterModel> box = Hive.box<CharacterModel>('characters_box');

  Future<void> _onInit(
    CharacterHealthPointsInitialEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) async {
    character = await characterRepository.getCharacter(
      event.characterId,
    );
    emit(CharacterHealthPointsState.loaded(character.healthPoints.current));
  }

  Future<void> _onAdd(
    CharacterHealthPointsAddEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) async {
    character.healthPoints.add();
    await characterRepository.saveCharacter(character);
    emit(CharacterHealthPointsState.loaded(character.healthPoints.current));
  }

  Future<void> _onSubtract(
    CharacterHealthPointsSubtractEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) async {
    character.healthPoints.subtract();
    await characterRepository.saveCharacter(character);
    emit(CharacterHealthPointsState.loaded(character.healthPoints.current));
  }

  Future<void> _onReset(
    CharacterHealthPointsResetEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) async {
    character.healthPoints.reset();
    await characterRepository.saveCharacter(character);
    emit(CharacterHealthPointsState.loaded(character.healthPoints.current));
  }
}
