import 'package:dnd_app/bloc/bloc.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc() : super(const CharacterState.initial()) {
    on<CharacterInitialEvent>(_onInit);

    add(const CharacterEvent.init());
  }

  final CharacterRepository characterRepository = CharacterRepository();

  Future<void> _onInit(
    CharacterInitialEvent event,
    Emitter<CharacterState> emit,
  ) async {
    final characters = await characterRepository.getCharacters();
    emit(CharacterState.loaded(characters));
  }
}
