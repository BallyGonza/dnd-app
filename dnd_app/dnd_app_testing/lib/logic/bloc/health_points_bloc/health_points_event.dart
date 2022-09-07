part of 'health_points_bloc.dart';

@freezed
abstract class HealthPointsEvent with _$HealthPointsEvent {
  const factory HealthPointsEvent.add() = HealthPointsAdd;
  const factory HealthPointsEvent.subtract() = HealthPointsSubtract;
}
