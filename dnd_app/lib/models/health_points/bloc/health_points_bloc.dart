import 'package:dnd_app/models/models.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class HealthPointsBloc
    extends HydratedBloc<HealthPointsEvent, HealthPointsState> {
  HealthPointsBloc(
    this.healthPoints,
    this.box,
  ) : super(HealthPointsState.init(
            box.get('hp', defaultValue: healthPoints.max))) {
    on<HealthPointsInitialEvent>(_onInit);
    on<HealthPointsAddEvent>(_onAdd);
    on<HealthPointsSubtractEvent>(_onSubtract);
    on<HealthPointsResetEvent>(_onReset);
  }

  final HealthPoints healthPoints;
  final Box box;

  void _onInit(
    HealthPointsInitialEvent event,
    Emitter<HealthPointsState> emit,
  ) {
    healthPoints.current = box.get('hp');
    emit(HealthPointsState.init(healthPoints.current));
  }

  void _onAdd(
    HealthPointsAddEvent event,
    Emitter<HealthPointsState> emit,
  ) {
    healthPoints.add();
    box.put('hp', healthPoints.current);
    emit(HealthPointsState.updated(healthPoints.current));
  }

  void _onSubtract(
    HealthPointsSubtractEvent event,
    Emitter<HealthPointsState> emit,
  ) {
    healthPoints.subtract();
    box.put('hp', healthPoints.current);
    emit(HealthPointsState.updated(healthPoints.current));
  }

  void _onReset(
    HealthPointsResetEvent event,
    Emitter<HealthPointsState> emit,
  ) {
    healthPoints.reset();
    box.put('hp', healthPoints.current);
    emit(HealthPointsState.updated(healthPoints.current));
  }

  @override
  HealthPointsState? fromJson(Map<String, dynamic> json) {
    return HealthPointsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(HealthPointsState state) {
    return state.toJson();
  }
}
