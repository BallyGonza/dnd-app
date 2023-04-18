import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_hp_state.freezed.dart';

@freezed
class CharacterHPState with _$CharacterHPState {
  const factory CharacterHPState.initial() = CharacterHPInitial;
  const factory CharacterHPState.loading() = CharacterHPLoading;
  const factory CharacterHPState.loaded(
    int current,
  ) = CharacterHPUpdated;
}
