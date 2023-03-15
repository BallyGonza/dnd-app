import 'package:freezed_annotation/freezed_annotation.dart';

part 'wild_form_health_points_event.freezed.dart';

@freezed
class WildFormHealthPointsEvent with _$WildFormHealthPointsEvent {
  const factory WildFormHealthPointsEvent.init() =
      WildFormHealthPointsInitialEvent;
  const factory WildFormHealthPointsEvent.add() = WildFormHealthPointsAddEvent;
  const factory WildFormHealthPointsEvent.subtract() =
      WildFormHealthPointsSubtractEvent;
  const factory WildFormHealthPointsEvent.reset() =
      WildFormHealthPointsResetEvent;
}
