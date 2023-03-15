import 'package:freezed_annotation/freezed_annotation.dart';

part 'wild_form_health_points_state.freezed.dart';
part 'wild_form_health_points_state.g.dart';

@freezed
class WildFormHealthPointsState with _$WildFormHealthPointsState {
  const factory WildFormHealthPointsState.init(
    int current,
  ) = WildFormHealthPointsInitial;
  const factory WildFormHealthPointsState.updated(
    int current,
  ) = WildFormHealthPointsUpdated;
  factory WildFormHealthPointsState.fromJson(Map<String, dynamic> json) =>
      _$WildFormHealthPointsStateFromJson(json);
}
