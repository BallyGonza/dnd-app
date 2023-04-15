import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'wallet_event.dart';
import 'wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc(
    CharacterRepository characterRepository,
  ) : super(const WalletState.initial()) {
    on<WalletInitialEvent>(_onInit);
    on<WalletAddEvent>(_onAdd);
    on<WalletSubtractEvent>(_onSubtract);
    on<WalletSetEvent>(_onSet);
  }

  final CharacterRepository characterRepository = CharacterRepository();
  late Character character;
  final Box<Character> box = Hive.box<Character>('characters_box');

  Future<void> _onInit(
    WalletInitialEvent event,
    Emitter<WalletState> emit,
  ) async {
    character = await characterRepository.getCharacter(event.characterId);
    emit(WalletState.updated(character.wallet));
  }

  void _onAdd(
    WalletAddEvent event,
    Emitter<WalletState> emit,
  ) {
    character.wallet.addPieces(pieces: event.pieces);
    box.put(character.id, character);
    emit(WalletState.updated(character.wallet));
  }

  void _onSubtract(
    WalletSubtractEvent event,
    Emitter<WalletState> emit,
  ) {
    character.wallet.removePieces(pieces: event.pieces);
    box.put(character.id, character);
    emit(WalletState.updated(character.wallet));
  }

  void _onSet(
    WalletSetEvent event,
    Emitter<WalletState> emit,
  ) {
    character.wallet.setPieces(pieces: event.pieces, amount: event.amount);
    box.put(character.id, character);
    emit(WalletState.updated(character.wallet));
  }
}
