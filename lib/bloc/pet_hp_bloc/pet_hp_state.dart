import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_hp_state.freezed.dart';

@freezed
class PetHPState with _$PetHPState {
  const factory PetHPState.initial() = PetHPInitial;
  const factory PetHPState.loading() = PetHPLoading;
  const factory PetHPState.loaded(
    int current,
  ) = PetHPUpdated;
}
