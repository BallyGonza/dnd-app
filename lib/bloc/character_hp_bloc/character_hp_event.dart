import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_hp_event.freezed.dart';

@freezed
class CharacterHPEvent with _$CharacterHPEvent {
  const factory CharacterHPEvent.init(
    int characterId,
  ) = CharacterHPInitialEvent;
  const factory CharacterHPEvent.add() = CharacterHPAddEvent;
  const factory CharacterHPEvent.subtract() = CharacterHPSubtractEvent;
  const factory CharacterHPEvent.reset() = CharacterHPResetEvent;
}
