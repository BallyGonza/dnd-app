import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_health_points_event.freezed.dart';

@freezed
class CharacterHealthPointsEvent with _$CharacterHealthPointsEvent {
  const factory CharacterHealthPointsEvent.init(
    int characterId,
  ) = CharacterHealthPointsInitialEvent;
  const factory CharacterHealthPointsEvent.add() =
      CharacterHealthPointsAddEvent;
  const factory CharacterHealthPointsEvent.subtract() =
      CharacterHealthPointsSubtractEvent;
  const factory CharacterHealthPointsEvent.reset() =
      CharacterHealthPointsResetEvent;
}
