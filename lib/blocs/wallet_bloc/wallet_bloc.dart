import 'package:dnd_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'wallet_event.dart';
import 'wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc(
    this.character,
  ) : super(WalletState.init(character.wallet)) {
    on<WalletInitialEvent>(_onInit);
    on<WalletAddEvent>(_onAdd);
    on<WalletSubtractEvent>(_onSubtract);
  }

  late Character character;
  final Box<Character> box = Hive.box<Character>('characters_box');

  void _onInit(
    WalletInitialEvent event,
    Emitter<WalletState> emit,
  ) {
    character = box.get(character.id)!;
    emit(WalletState.init(character.wallet));
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

  WalletState? fromJson(Map<String, dynamic> json) {
    return WalletState.fromJson(json);
  }

  Map<String, dynamic>? toJson(WalletState state) {
    return state.toJson();
  }
}
