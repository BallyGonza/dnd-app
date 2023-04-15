import 'package:dnd_app/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loot_event.freezed.dart';

@freezed
class LootEvent with _$LootEvent {
  const factory LootEvent.init(
    int characterId,
  ) = LootInitialEvent;
  const factory LootEvent.add(
    Note note,
  ) = LootAddEvent;
  const factory LootEvent.edit(
    int index,
    Note note,
  ) = LootEditEvent;
  const factory LootEvent.delete(
    int index,
  ) = LootDeleteEvent;
  const factory LootEvent.deleteAll(
    List<Note> notes,
  ) = LootDeleteAllEvent;
}
