import 'package:dnd_app/bloc/bloc.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CharacterHPBloc extends Bloc<CharacterHPEvent, CharacterHPState> {
  CharacterHPBloc() : super(const CharacterHPState.initial()) {
    on<CharacterHPInitialEvent>(_onInit);
    on<CharacterHPAddEvent>(_onAdd);
    on<CharacterHPSubtractEvent>(_onSubtract);
    on<CharacterHPResetEvent>(_onReset);
  }

  final CharacterRepository characterRepository = CharacterRepository();
  late CharacterModel character;
  final Box<CharacterModel> box = Hive.box<CharacterModel>('characters_box');

  Future<void> _onInit(
    CharacterHPInitialEvent event,
    Emitter<CharacterHPState> emit,
  ) async {
    character = await characterRepository.getCharacter(event.characterId);
    emit(CharacterHPState.loaded(character.healthPoints.current));
  }

  Future<void> _onAdd(
    CharacterHPAddEvent event,
    Emitter<CharacterHPState> emit,
  ) async {
    character.healthPoints.add();
    await characterRepository.saveCharacter(character);
    emit(CharacterHPState.loaded(character.healthPoints.current));
  }

  Future<void> _onSubtract(
    CharacterHPSubtractEvent event,
    Emitter<CharacterHPState> emit,
  ) async {
    character.healthPoints.subtract();
    await characterRepository.saveCharacter(character);
    emit(CharacterHPState.loaded(character.healthPoints.current));
  }

  Future<void> _onReset(
    CharacterHPResetEvent event,
    Emitter<CharacterHPState> emit,
  ) async {
    character.healthPoints.reset();
    await characterRepository.saveCharacter(character);
    emit(CharacterHPState.loaded(character.healthPoints.current));
  }
}
