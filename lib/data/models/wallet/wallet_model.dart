import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'wallet_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 12)
class Wallet {
  @HiveField(0)
  int platinumPieces;
  @HiveField(1)
  int goldPieces;
  @HiveField(2)
  int electrumPieces;
  @HiveField(3)
  int silverPieces;
  @HiveField(4)
  int copperPieces;

  Wallet({
    required this.platinumPieces,
    required this.goldPieces,
    required this.electrumPieces,
    required this.silverPieces,
    required this.copperPieces,
  });

  void addPieces({required String pieces}) {
    if (pieces == 'platinum') {
      platinumPieces += 1;
    } else if (pieces == 'gold') {
      goldPieces += 1;
    } else if (pieces == 'electrum') {
      electrumPieces += 1;
    } else if (pieces == 'silver') {
      silverPieces += 1;
    } else if (pieces == 'copper') {
      copperPieces += 1;
    }
  }

  void removePieces({required String pieces}) {
    if (pieces == 'platinum' && platinumPieces > 0) {
      platinumPieces -= 1;
    } else if (pieces == 'gold' && goldPieces > 0) {
      goldPieces -= 1;
    } else if (pieces == 'electrum' && electrumPieces > 0) {
      electrumPieces -= 1;
    } else if (pieces == 'silver' && silverPieces > 0) {
      silverPieces -= 1;
    } else if (pieces == 'copper' && copperPieces > 0) {
      copperPieces -= 1;
    }
  }

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);

  Map<String, dynamic> toJson() => _$WalletToJson(this);
}