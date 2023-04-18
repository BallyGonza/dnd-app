import 'package:freezed_annotation/freezed_annotation.dart';

part 'wild_form_hp_event.freezed.dart';

@freezed
class WildFormHPEvent with _$WildFormHPEvent {
  const factory WildFormHPEvent.init(
    int characterId,
  ) = WildFormHPInitialEvent;
  const factory WildFormHPEvent.add() = WildFormHPAddEvent;
  const factory WildFormHPEvent.subtract() = WildFormHPSubtractEvent;
  const factory WildFormHPEvent.reset() = WildFormHPResetEvent;
}
