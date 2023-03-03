import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/logic/logic.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class CharacterHealthPointsBloc extends HydratedBloc<CharacterHealthPointsEvent,
    CharacterHealthPointsState> {
  CharacterHealthPointsBloc(
    this.character,
  ) : super(CharacterHealthPointsState.init(character.healthPoints.current)) {
    on<CharacterHealthPointsInitialEvent>(_onInit);
    on<CharacterHealthPointsAddEvent>(_onAdd);
    on<CharacterHealthPointsSubtractEvent>(_onSubtract);
    on<CharacterHealthPointsResetEvent>(_onReset);
  }

  // final HealthPoints healthPoints;
  late Character character;
  final Box<Character> box = Hive.box<Character>('characters_box');

  void _onInit(
    CharacterHealthPointsInitialEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    character = box.get(0)!;
    emit(CharacterHealthPointsState.init(character.healthPoints.current));
  }

  void _onAdd(
    CharacterHealthPointsAddEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    character.healthPoints.add();
    box.put(0, character);
    emit(CharacterHealthPointsState.updated(character.healthPoints.current));
  }

  void _onSubtract(
    CharacterHealthPointsSubtractEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    character.healthPoints.subtract();
    box.put(0, character);
    emit(CharacterHealthPointsState.updated(character.healthPoints.current));
  }

  void _onReset(
    CharacterHealthPointsResetEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    character.healthPoints.reset();
    box.put(0, character);
    emit(CharacterHealthPointsState.updated(character.healthPoints.current));
  }

  @override
  CharacterHealthPointsState? fromJson(Map<String, dynamic> json) {
    return CharacterHealthPointsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(CharacterHealthPointsState state) {
    return state.toJson();
  }
}
