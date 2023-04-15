import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_health_points_event.freezed.dart';

@freezed
class PetHealthPointsEvent with _$PetHealthPointsEvent {
  const factory PetHealthPointsEvent.init(
    int characterId,
  ) = PetHealthPointsInitialEvent;
  const factory PetHealthPointsEvent.add() = PetHealthPointsAddEvent;
  const factory PetHealthPointsEvent.subtract() = PetHealthPointsSubtractEvent;
  const factory PetHealthPointsEvent.reset() = PetHealthPointsResetEvent;
}
