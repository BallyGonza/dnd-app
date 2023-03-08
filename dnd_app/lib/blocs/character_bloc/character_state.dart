import 'package:dnd_app/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_state.freezed.dart';
part 'character_state.g.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.initial() = CharacterInitial;
  const factory CharacterState.updated(
    List<Character> characters,
  ) = CharacterUpdated;
  factory CharacterState.fromJson(Map<String, dynamic> json) =>
      _$CharacterStateFromJson(json);
}
