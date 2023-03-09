import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'export.dart';

class PetHealthPointsBloc
    extends Bloc<PetHealthPointsEvent, PetHealthPointsState> {
  PetHealthPointsBloc(
    this.character,
  ) : super(PetHealthPointsState.init(character.pet[0].healthPoints.current)) {
    on<PetHealthPointsInitialEvent>(_onInit);
    on<PetHealthPointsAddEvent>(_onAdd);
    on<PetHealthPointsSubtractEvent>(_onSubtract);
    on<PetHealthPointsResetEvent>(_onReset);
  }

  late Character character;
  final Box<Character> box = Hive.box<Character>('characters_box');

  void _onInit(
    PetHealthPointsInitialEvent event,
    Emitter<PetHealthPointsState> emit,
  ) {
    character = box.get(character.id)!;
    emit(PetHealthPointsState.init(character.pet[0].healthPoints.current));
  }

  void _onAdd(
    PetHealthPointsAddEvent event,
    Emitter<PetHealthPointsState> emit,
  ) {
    character.pet[0].healthPoints.add();
    box.put(character.id, character);
    emit(PetHealthPointsState.updated(character.pet[0].healthPoints.current));
  }

  void _onSubtract(
    PetHealthPointsSubtractEvent event,
    Emitter<PetHealthPointsState> emit,
  ) {
    character.pet[0].healthPoints.subtract();
    box.put(character.id, character);
    emit(PetHealthPointsState.updated(character.pet[0].healthPoints.current));
  }

  void _onReset(
    PetHealthPointsResetEvent event,
    Emitter<PetHealthPointsState> emit,
  ) {
    character.pet[0].healthPoints.reset();
    box.put(character.id, character);
    emit(PetHealthPointsState.updated(character.healthPoints.current));
  }

  @override
  PetHealthPointsState? fromJson(Map<String, dynamic> json) {
    return PetHealthPointsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PetHealthPointsState state) {
    return state.toJson();
  }
}
