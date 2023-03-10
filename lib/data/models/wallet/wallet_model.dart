import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'wallet_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 12)
class Wallet {
  @HiveField(0)
  final int platinumPieces;
  @HiveField(1)
  final int goldPieces;
  @HiveField(2)
  final int electrumPieces;
  @HiveField(3)
  final int silverPieces;
  @HiveField(4)
  final int copperPieces;

  Wallet({
    required this.platinumPieces,
    required this.goldPieces,
    required this.electrumPieces,
    required this.silverPieces,
    required this.copperPieces,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);

  Map<String, dynamic> toJson() => _$WalletToJson(this);
}
