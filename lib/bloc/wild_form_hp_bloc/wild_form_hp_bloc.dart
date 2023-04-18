import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'wild_form_hp_event.dart';
import 'wild_form_hp_state.dart';

class WildFormHPBloc extends Bloc<WildFormHPEvent, WildFormHPState> {
  WildFormHPBloc() : super(const WildFormHPState.initial()) {
    on<WildFormHPInitialEvent>(_onInit);
    on<WildFormHPAddEvent>(_onAdd);
    on<WildFormHPSubtractEvent>(_onSubtract);
    on<WildFormHPResetEvent>(_onReset);
  }

  final CharacterRepository characterRepository = CharacterRepository();
  late CharacterModel character;

  Future<void> _onInit(
    WildFormHPInitialEvent event,
    Emitter<WildFormHPState> emit,
  ) async {
    character = await characterRepository.getCharacter(event.characterId);
    emit(WildFormHPState.loaded(character.wildForms[0].healthPoints.current));
  }

  Future<void> _onAdd(
    WildFormHPAddEvent event,
    Emitter<WildFormHPState> emit,
  ) async {
    character.wildForms[0].healthPoints.add();
    await characterRepository.saveCharacter(character);
    emit(WildFormHPState.loaded(character.wildForms[0].healthPoints.current));
  }

  Future<void> _onSubtract(
    WildFormHPSubtractEvent event,
    Emitter<WildFormHPState> emit,
  ) async {
    character.wildForms[0].healthPoints.subtract();
    await characterRepository.saveCharacter(character);
    emit(WildFormHPState.loaded(character.wildForms[0].healthPoints.current));
  }

  Future<void> _onReset(
    WildFormHPResetEvent event,
    Emitter<WildFormHPState> emit,
  ) async {
    character.wildForms[0].healthPoints.reset();
    await characterRepository.saveCharacter(character);
    emit(WildFormHPState.loaded(character.healthPoints.current));
  }
}
