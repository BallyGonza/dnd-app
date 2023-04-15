import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_health_points_state.freezed.dart';

@freezed
class CharacterHealthPointsState with _$CharacterHealthPointsState {
  const factory CharacterHealthPointsState.initial() =
      CharacterHealthPointsInitial;
  const factory CharacterHealthPointsState.loading() =
      CharacterHealthPointsLoading;
  const factory CharacterHealthPointsState.loaded(
    int current,
  ) = CharacterHealthPointsUpdated;
}
