import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_points_bloc.freezed.dart';
part 'health_points_event.dart';
part 'health_points_state.dart';

class HealthPointsBloc extends Bloc<HealthPointsEvent, HealthPointsState> {
  HealthPointsBloc() : super(const HealthPointsState.initial()) {
    on<HealthPointsAdd>((event, emit) {
      emit(const HealthPointsState.added());
    });
    on<HealthPointsSubtract>((event, emit) {
      emit(const HealthPointsState.subtracted());
    });
  }
}
