import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/logic/logic.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class CharacterHealthPointsBloc extends HydratedBloc<CharacterHealthPointsEvent,
    CharacterHealthPointsState> {
  CharacterHealthPointsBloc(
    this.healthPoints,
  ) : super(CharacterHealthPointsState.init(healthPoints.current)) {
    on<CharacterHealthPointsInitialEvent>(_onInit);
    on<CharacterHealthPointsAddEvent>(_onAdd);
    on<CharacterHealthPointsSubtractEvent>(_onSubtract);
    on<CharacterHealthPointsResetEvent>(_onReset);
  }

  final HealthPoints healthPoints;
  final Box<HealthPoints> box =
      Hive.box<HealthPoints>('character_health_points_box');

  void _onInit(
    CharacterHealthPointsInitialEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    box.get(0) ?? box.put(0, healthPoints);
    healthPoints.current = box.get(0)!.current;
    emit(CharacterHealthPointsState.init(healthPoints.current));
  }

  void _onAdd(
    CharacterHealthPointsAddEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    healthPoints.add();
    box.put(0, healthPoints);
    emit(CharacterHealthPointsState.updated(healthPoints.current));
  }

  void _onSubtract(
    CharacterHealthPointsSubtractEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    healthPoints.subtract();
    box.put(0, healthPoints);
    emit(CharacterHealthPointsState.updated(healthPoints.current));
  }

  void _onReset(
    CharacterHealthPointsResetEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    healthPoints.reset();
    box.put(0, healthPoints);
    emit(CharacterHealthPointsState.updated(healthPoints.current));
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
