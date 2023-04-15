import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
  late Character character;
  final Box<Character> box = Hive.box<Character>('characters_box');

  Future<void> _onInit(
    PetHealthPointsInitialEvent event,
    Emitter<PetHealthPointsState> emit,
  ) async {
    character = await characterRepository.getCharacter(event.characterId);
    emit(PetHealthPointsState.updated(character.pets[0].healthPoints.current));
  }

  void _onAdd(
    PetHealthPointsAddEvent event,
    Emitter<PetHealthPointsState> emit,
  ) {
    character.pets[0].healthPoints.add();
    box.put(character.id, character);
    emit(PetHealthPointsState.updated(character.pets[0].healthPoints.current));
  }

  void _onSubtract(
    PetHealthPointsSubtractEvent event,
    Emitter<PetHealthPointsState> emit,
  ) {
    character.pets[0].healthPoints.subtract();
    box.put(character.id, character);
    emit(PetHealthPointsState.updated(character.pets[0].healthPoints.current));
  }

  void _onReset(
    PetHealthPointsResetEvent event,
    Emitter<PetHealthPointsState> emit,
  ) {
    character.pets[0].healthPoints.reset();
    box.put(character.id, character);
    emit(PetHealthPointsState.updated(character.healthPoints.current));
  }
}
