import 'package:dnd_app/models/models.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class HealthPointsBloc
    extends HydratedBloc<HealthPointsEvent, HealthPointsState> {
  HealthPointsBloc(
    this.healthPoints,
  ) : super(const HealthPointsState.init()) {
    on<HealthPointsInitEvent>(_onInit);
    on<HealthPointsAddEvent>(_onAdd);
    on<HealthPointsSubtractEvent>(_onSubtract);
    on<HealthPointsResetEvent>(_onReset);
  }

  final HealthPoints healthPoints;

  void _onInit(
    HealthPointsInitEvent event,
    Emitter<HealthPointsState> emit,
  ) {
    emit(const HealthPointsState.init());
  }

  void _onAdd(
    HealthPointsAddEvent event,
    Emitter<HealthPointsState> emit,
  ) {
    healthPoints.add();
    emit(const HealthPointsState.updated());
  }

  void _onSubtract(
    HealthPointsSubtractEvent event,
    Emitter<HealthPointsState> emit,
  ) {
    healthPoints.subtract();
    emit(const HealthPointsState.updated());
  }

  void _onReset(
    HealthPointsResetEvent event,
    Emitter<HealthPointsState> emit,
  ) {
    healthPoints.reset();
    emit(const HealthPointsState.updated());
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
