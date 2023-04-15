import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_event.freezed.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.init(
    int characterId,
  ) = WalletInitialEvent;
  const factory WalletEvent.add(
    String pieces,
  ) = WalletAddEvent;
  const factory WalletEvent.subtract(
    String pieces,
  ) = WalletSubtractEvent;
  const factory WalletEvent.set(
    String pieces,
    int amount,
  ) = WalletSetEvent;
}
