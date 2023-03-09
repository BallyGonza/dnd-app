import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_health_points_state.freezed.dart';
part 'pet_health_points_state.g.dart';

@freezed
class PetHealthPointsState with _$PetHealthPointsState {
  const factory PetHealthPointsState.init(
    int current,
  ) = PetHealthPointsInitial;
  const factory PetHealthPointsState.updated(
    int current,
  ) = PetHealthPointsUpdated;
  factory PetHealthPointsState.fromJson(Map<String, dynamic> json) =>
      _$PetHealthPointsStateFromJson(json);
}
