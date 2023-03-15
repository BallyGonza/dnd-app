import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'export.dart';

class WildFormHealthPointsBloc
    extends Bloc<WildFormHealthPointsEvent, WildFormHealthPointsState> {
  WildFormHealthPointsBloc(
    this.character,
  ) : super(WildFormHealthPointsState.init(
            character.wildForms[0].healthPoints.current)) {
    on<WildFormHealthPointsInitialEvent>(_onInit);
    on<WildFormHealthPointsAddEvent>(_onAdd);
    on<WildFormHealthPointsSubtractEvent>(_onSubtract);
    on<WildFormHealthPointsResetEvent>(_onReset);
  }

  late Character character;
  final Box<Character> box = Hive.box<Character>('characters_box');

  void _onInit(
    WildFormHealthPointsInitialEvent event,
    Emitter<WildFormHealthPointsState> emit,
  ) {
    character = box.get(character.id)!;
    emit(WildFormHealthPointsState.init(
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

  @override
  WildFormHealthPointsState? fromJson(Map<String, dynamic> json) {
    return WildFormHealthPointsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(WildFormHealthPointsState state) {
    return state.toJson();
  }
}
