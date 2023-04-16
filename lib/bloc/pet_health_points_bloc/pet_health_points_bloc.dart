import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pet_health_points_event.dart';
import 'pet_health_points_state.dart';

class PetHealthPointsBloc
    extends Bloc<PetHealthPointsEvent, PetHealthPointsState> {
  PetHealthPointsBloc(
    CharacterRepository characterRepository,
  ) : super(const PetHealthPointsState.initial()) {
    on<PetHealthPointsInitialEvent>(_onInit);
    on<PetHealthPointsAddEvent>(_onAdd);
    on<PetHealthPointsSubtractEvent>(_onSubtract);
    on<PetHealthPointsResetEvent>(_onReset);
  }
  final CharacterRepository characterRepository = CharacterRepository();
  late CharacterModel character;

  Future<void> _onInit(
    PetHealthPointsInitialEvent event,
    Emitter<PetHealthPointsState> emit,
  ) async {
    character = await characterRepository.getCharacter(event.characterId);
    emit(PetHealthPointsState.loaded(character.pets[0].healthPoints.current));
  }

  Future<void> _onAdd(
    PetHealthPointsAddEvent event,
    Emitter<PetHealthPointsState> emit,
  ) async {
    character.pets[0].healthPoints.add();
    await characterRepository.saveCharacter(character);
    emit(PetHealthPointsState.loaded(character.pets[0].healthPoints.current));
  }

  Future<void> _onSubtract(
    PetHealthPointsSubtractEvent event,
    Emitter<PetHealthPointsState> emit,
  ) async {
    character.pets[0].healthPoints.subtract();
    await characterRepository.saveCharacter(character);
    emit(PetHealthPointsState.loaded(character.pets[0].healthPoints.current));
  }

  Future<void> _onReset(
    PetHealthPointsResetEvent event,
    Emitter<PetHealthPointsState> emit,
  ) async {
    character.pets[0].healthPoints.reset();
    await characterRepository.saveCharacter(character);
    emit(PetHealthPointsState.loaded(character.healthPoints.current));
  }
}
