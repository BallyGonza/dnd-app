import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_hp_event.freezed.dart';

@freezed
class PetHPEvent with _$PetHPEvent {
  const factory PetHPEvent.init(
    int characterId,
  ) = PetHPInitialEvent;
  const factory PetHPEvent.add() = PetHPAddEvent;
  const factory PetHPEvent.subtract() = PetHPSubtractEvent;
  const factory PetHPEvent.reset() = PetHPResetEvent;
}
