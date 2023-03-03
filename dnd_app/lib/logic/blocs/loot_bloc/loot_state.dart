import 'package:dnd_app/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loot_state.freezed.dart';
// part 'loot_state.g.dart';

@freezed
class LootState with _$LootState {
  const factory LootState.init(
    List<Note> notes,
  ) = LootInitial;
  const factory LootState.updated(
    List<Note> notes,
  ) = LootUpdated;
}
