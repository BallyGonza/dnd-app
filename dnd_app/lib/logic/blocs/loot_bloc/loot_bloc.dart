import 'package:bloc/bloc.dart';
import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/logic/logic.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LootBloc extends Bloc<LootEvent, LootState> {
  LootBloc(
    this.character,
  ) : super(LootState.init(character.notes)) {
    on<LootInitialEvent>(_onInit);
    on<LootAddEvent>(_onAdd);
    on<LootDeleteEvent>(_onDelete);
    on<LootDeleteAllEvent>(_onDeleteAll);
  }

  late Character character;
  final Box<Character> box = Hive.box<Character>('characters_box');

  Future<void> _onInit(
    LootInitialEvent event,
    Emitter<LootState> emit,
  ) async {
    character = box.get(0)!;

    emit(LootState.init(character.notes));
  }

  Future<void> _onAdd(
    LootAddEvent event,
    Emitter<LootState> emit,
  ) async {
    character.notes.add(event.note);
    await box.put(0, character);
    emit(LootState.updated(character.notes));
  }

  Future<void> _onDelete(
    LootDeleteEvent event,
    Emitter<LootState> emit,
  ) async {
    character.notes.removeAt(event.index);
    await box.put(0, character);
    emit(LootState.updated(character.notes));
  }

  void _onDeleteAll(
    LootDeleteAllEvent event,
    Emitter<LootState> emit,
  ) {
    for (var element in event.notes) {
      character.notes.remove(element);
    }
    box.put(0, character);
    emit(LootState.updated(character.notes));
  }
}
