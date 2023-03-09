import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_health_points_state.freezed.dart';
part 'character_health_points_state.g.dart';

@freezed
class CharacterHealthPointsState with _$CharacterHealthPointsState {
  const factory CharacterHealthPointsState.init(
    int current,
  ) = CharacterHealthPointsInitial;
  const factory CharacterHealthPointsState.updated(
    int current,
  ) = CharacterHealthPointsUpdated;
  factory CharacterHealthPointsState.fromJson(Map<String, dynamic> json) =>
      _$CharacterHealthPointsStateFromJson(json);
}
