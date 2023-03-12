import 'package:dnd_app/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_state.freezed.dart';
part 'wallet_state.g.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.init(
    Wallet wallet,
  ) = WalletInitial;
  const factory WalletState.updated(
    Wallet wallet,
  ) = WalletUpdated;
  factory WalletState.fromJson(Map<String, dynamic> json) =>
      _$WalletStateFromJson(json);
}
