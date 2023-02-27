import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_points_event.freezed.dart';

@freezed
class HealthPointsEvent with _$HealthPointsEvent {
  const factory HealthPointsEvent.init() = HealthPointsInitialEvent;
  const factory HealthPointsEvent.add() = HealthPointsAddEvent;
  const factory HealthPointsEvent.subtract() = HealthPointsSubtractEvent;
  const factory HealthPointsEvent.reset() = HealthPointsResetEvent;
}
