import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'wild_form_health_points_event.dart';
import 'wild_form_health_points_state.dart';

class WildFormHealthPointsBloc
    extends Bloc<WildFormHealthPointsEvent, WildFormHealthPointsState> {
  WildFormHealthPointsBloc(
    CharacterRepository characterRepository,
  ) : super(const WildFormHealthPointsState.initial()) {
    on<WildFormHealthPointsInitialEvent>(_onInit);
    on<WildFormHealthPointsAddEvent>(_onAdd);
    on<WildFormHealthPointsSubtractEvent>(_onSubtract);
    on<WildFormHealthPointsResetEvent>(_onReset);
  }

  final CharacterRepository characterRepository = CharacterRepository();
  late Character character;
  final Box<Character> box = Hive.box<Character>('characters_box');

  Future<void> _onInit(
    WildFormHealthPointsInitialEvent event,
    Emitter<WildFormHealthPointsState> emit,
  ) async {
    character = await characterRepository.getCharacter(event.characterId);
    emit(WildFormHealthPointsState.updated(
        character.wildForms[0].healthPoints.current));
  }

  void _onAdd(
    WildFormHealthPointsAddEvent event,
    Emitter<WildFormHealthPointsState> emit,
  ) {
    character.wildForms[0].healthPoints.add();
    box.put(character.id, character);
    emit(WildFormHealthPointsState.updated(
        character.wildForms[0].healthPoints.current));
  }

  void _onSubtract(
    WildFormHealthPointsSubtractEvent event,
    Emitter<WildFormHealthPointsState> emit,
  ) {
    character.wildForms[0].healthPoints.subtract();
    box.put(character.id, character);
    emit(WildFormHealthPointsState.updated(
        character.wildForms[0].healthPoints.current));
  }

  void _onReset(
    WildFormHealthPointsResetEvent event,
    Emitter<WildFormHealthPointsState> emit,
  ) {
    character.wildForms[0].healthPoints.reset();
    box.put(character.id, character);
    emit(WildFormHealthPointsState.updated(character.healthPoints.current));
  }
}
