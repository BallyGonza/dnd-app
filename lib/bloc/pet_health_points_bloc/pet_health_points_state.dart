import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_health_points_state.freezed.dart';

@freezed
class PetHealthPointsState with _$PetHealthPointsState {
  const factory PetHealthPointsState.initial() = PetHealthPointsInitial;
  const factory PetHealthPointsState.loading() = PetHealthPointsLoading;
  const factory PetHealthPointsState.updated(
    int current,
  ) = PetHealthPointsUpdated;
}
