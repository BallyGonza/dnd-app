import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_points_state.freezed.dart';
part 'health_points_state.g.dart';

@freezed
class HealthPointsState with _$HealthPointsState {
  const factory HealthPointsState.init(
    int current,
  ) = HealthPointsInitial;
  const factory HealthPointsState.updated(
    int current,
  ) = HealthPointsUpdated;
  factory HealthPointsState.fromJson(Map<String, dynamic> json) =>
      _$HealthPointsStateFromJson(json);
}
