import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_event.freezed.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.init() = CharacterInitialEvent;
  const factory CharacterEvent.add() = CharacterAddEvent;
  const factory CharacterEvent.remove() = CharacterSubtractEvent;
}
