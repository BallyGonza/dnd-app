import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  late CharacterModel character;

  Future<void> _onInit(
    WildFormHealthPointsInitialEvent event,
    Emitter<WildFormHealthPointsState> emit,
  ) async {
    character = await characterRepository.getCharacter(event.characterId);
    emit(WildFormHealthPointsState.loaded(
        character.wildForms[0].healthPoints.current));
  }

  Future<void> _onAdd(
    WildFormHealthPointsAddEvent event,
    Emitter<WildFormHealthPointsState> emit,
  ) async {
    character.wildForms[0].healthPoints.add();
    await characterRepository.saveCharacter(character);
    emit(WildFormHealthPointsState.loaded(
        character.wildForms[0].healthPoints.current));
  }

  Future<void> _onSubtract(
    WildFormHealthPointsSubtractEvent event,
    Emitter<WildFormHealthPointsState> emit,
  ) async {
    character.wildForms[0].healthPoints.subtract();
    await characterRepository.saveCharacter(character);
    emit(WildFormHealthPointsState.loaded(
        character.wildForms[0].healthPoints.current));
  }

  Future<void> _onReset(
    WildFormHealthPointsResetEvent event,
    Emitter<WildFormHealthPointsState> emit,
  ) async {
    character.wildForms[0].healthPoints.reset();
    await characterRepository.saveCharacter(character);
    emit(WildFormHealthPointsState.loaded(character.healthPoints.current));
  }
}
