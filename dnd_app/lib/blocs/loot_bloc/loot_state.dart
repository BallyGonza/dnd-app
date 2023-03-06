import 'package:dnd_app/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loot_state.freezed.dart';
// part 'loot_state.g.dart';

@freezed
class LootState with _$LootState {
  const factory LootState.initial() = LootInitial;
  const factory LootState.loaded(List<Note> notes) = LootLoaded;
  const factory LootState.failure() = LootFailure;
}
