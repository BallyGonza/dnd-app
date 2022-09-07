part of 'health_points_bloc.dart';

@freezed
abstract class HealthPointsState with _$HealthPointsState {
  const factory HealthPointsState.initial() = HealthPointsInitial;
  const factory HealthPointsState.added() = HealthPointsAdded;
  const factory HealthPointsState.subtracted() = HealthPointsSubtracted;
}
