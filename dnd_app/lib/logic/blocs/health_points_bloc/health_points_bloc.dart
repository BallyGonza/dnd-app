import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/logic/logic.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class HealthPointsBloc
    extends HydratedBloc<HealthPointsEvent, HealthPointsState> {
  HealthPointsBloc(
    this.healthPoints,
  ) : super(HealthPointsState.init(healthPoints.current)) {
    on<HealthPointsInitialEvent>(_onInit);
    on<HealthPointsAddEvent>(_onAdd);
    on<HealthPointsSubtractEvent>(_onSubtract);
    on<HealthPointsResetEvent>(_onReset);
  }

  final HealthPoints healthPoints;

  void _onInit(
    HealthPointsInitialEvent event,
    Emitter<HealthPointsState> emit,
  ) {
    emit(HealthPointsState.init(healthPoints.current));
  }

  void _onAdd(
    HealthPointsAddEvent event,
    Emitter<HealthPointsState> emit,
  ) {
    healthPoints.add();
    emit(HealthPointsState.updated(healthPoints.current));
  }

  void _onSubtract(
    HealthPointsSubtractEvent event,
    Emitter<HealthPointsState> emit,
  ) {
    healthPoints.subtract();
    emit(HealthPointsState.updated(healthPoints.current));
  }

  void _onReset(
    HealthPointsResetEvent event,
    Emitter<HealthPointsState> emit,
  ) {
    healthPoints.reset();
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
