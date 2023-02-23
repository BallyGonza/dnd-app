import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_points_state.freezed.dart';
part 'health_points_state.g.dart';

@freezed
class HealthPointsState with _$HealthPointsState {
  const factory HealthPointsState.init() = HealthPointsInitial;
  const factory HealthPointsState.added() = HealthPointsAdded;
  const factory HealthPointsState.subtracted() = HealthPointsSubtracted;
  const factory HealthPointsState.reset() = HealthPointsReset;
  factory HealthPointsState.fromJson(Map<String, dynamic> json) =>
      _$HealthPointsStateFromJson(json);
}
