import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/logic/logic.dart';
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

  void _onInit(
    CharacterHealthPointsInitialEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    emit(CharacterHealthPointsState.init(healthPoints.current));
  }

  void _onAdd(
    CharacterHealthPointsAddEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    healthPoints.add();
    emit(CharacterHealthPointsState.updated(healthPoints.current));
  }

  void _onSubtract(
    CharacterHealthPointsSubtractEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    healthPoints.subtract();
    emit(CharacterHealthPointsState.updated(healthPoints.current));
  }

  void _onReset(
    CharacterHealthPointsResetEvent event,
    Emitter<CharacterHealthPointsState> emit,
  ) {
    healthPoints.reset();
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
