import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pet_hp_event.dart';
import 'pet_hp_state.dart';

class PetHPBloc extends Bloc<PetHPEvent, PetHPState> {
  PetHPBloc() : super(const PetHPState.initial()) {
    on<PetHPInitialEvent>(_onInit);
    on<PetHPAddEvent>(_onAdd);
    on<PetHPSubtractEvent>(_onSubtract);
    on<PetHPResetEvent>(_onReset);
  }
  final CharacterRepository characterRepository = CharacterRepository();
  late CharacterModel character;

  Future<void> _onInit(
    PetHPInitialEvent event,
    Emitter<PetHPState> emit,
  ) async {
    character = await characterRepository.getCharacter(event.characterId);
    emit(PetHPState.loaded(character.pets[0].healthPoints.current));
  }

  Future<void> _onAdd(
    PetHPAddEvent event,
    Emitter<PetHPState> emit,
  ) async {
    character.pets[0].healthPoints.add();
    await characterRepository.saveCharacter(character);
    emit(PetHPState.loaded(character.pets[0].healthPoints.current));
  }

  Future<void> _onSubtract(
    PetHPSubtractEvent event,
    Emitter<PetHPState> emit,
  ) async {
    character.pets[0].healthPoints.subtract();
    await characterRepository.saveCharacter(character);
    emit(PetHPState.loaded(character.pets[0].healthPoints.current));
  }

  Future<void> _onReset(
    PetHPResetEvent event,
    Emitter<PetHPState> emit,
  ) async {
    character.pets[0].healthPoints.reset();
    await characterRepository.saveCharacter(character);
    emit(PetHPState.loaded(character.healthPoints.current));
  }
}
