import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/logic/logic.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class PetHealthPointsBloc
    extends HydratedBloc<PetHealthPointsEvent, PetHealthPointsState> {
  PetHealthPointsBloc(
    this.healthPoints,
  ) : super(PetHealthPointsState.init(healthPoints.current)) {
    on<PetHealthPointsInitialEvent>(_onInit);
    on<PetHealthPointsAddEvent>(_onAdd);
    on<PetHealthPointsSubtractEvent>(_onSubtract);
    on<PetHealthPointsResetEvent>(_onReset);
  }

  final HealthPoints healthPoints;

  void _onInit(
    PetHealthPointsInitialEvent event,
    Emitter<PetHealthPointsState> emit,
  ) {
    emit(PetHealthPointsState.init(healthPoints.current));
  }

  void _onAdd(
    PetHealthPointsAddEvent event,
    Emitter<PetHealthPointsState> emit,
  ) {
    healthPoints.add();
    emit(PetHealthPointsState.updated(healthPoints.current));
  }

  void _onSubtract(
    PetHealthPointsSubtractEvent event,
    Emitter<PetHealthPointsState> emit,
  ) {
    healthPoints.subtract();
    emit(PetHealthPointsState.updated(healthPoints.current));
  }

  void _onReset(
    PetHealthPointsResetEvent event,
    Emitter<PetHealthPointsState> emit,
  ) {
    healthPoints.reset();
    emit(PetHealthPointsState.updated(healthPoints.current));
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
