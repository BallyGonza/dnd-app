import 'package:dnd_app/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_state.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.initial() = CharacterInitial;
  const factory CharacterState.loading() = CharacterLoading;
  const factory CharacterState.updated(
    List<Character> characters,
  ) = CharacterUpdated;
}
