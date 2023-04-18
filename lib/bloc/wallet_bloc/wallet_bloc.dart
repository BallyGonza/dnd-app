import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'wallet_event.dart';
import 'wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(const WalletState.initial()) {
    on<WalletInitialEvent>(_onInit);
    on<WalletAddEvent>(_onAdd);
    on<WalletSubtractEvent>(_onSubtract);
    on<WalletSetEvent>(_onSet);
  }

  final CharacterRepository characterRepository = CharacterRepository();

  late CharacterModel character;

  Future<void> _onInit(
    WalletInitialEvent event,
    Emitter<WalletState> emit,
  ) async {
    character = await characterRepository.getCharacter(event.characterId);
    emit(WalletState.loaded(character.wallet));
  }

  Future<void> _onAdd(
    WalletAddEvent event,
    Emitter<WalletState> emit,
  ) async {
    character.wallet.addPieces(pieces: event.pieces);
    await characterRepository.saveCharacter(character);
    emit(WalletState.loaded(character.wallet));
  }

  Future<void> _onSubtract(
    WalletSubtractEvent event,
    Emitter<WalletState> emit,
  ) async {
    character.wallet.removePieces(pieces: event.pieces);
    await characterRepository.saveCharacter(character);
    emit(WalletState.loaded(character.wallet));
  }

  Future<void> _onSet(
    WalletSetEvent event,
    Emitter<WalletState> emit,
  ) async {
    character.wallet.setPieces(pieces: event.pieces, amount: event.amount);
    await characterRepository.saveCharacter(character);
    emit(WalletState.loaded(character.wallet));
  }
}
