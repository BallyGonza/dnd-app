// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WalletAdapter extends TypeAdapter<Wallet> {
  @override
  final int typeId = 12;

  @override
  Wallet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Wallet(
      platinumPieces: fields[0] as int,
      goldPieces: fields[1] as int,
      electrumPieces: fields[2] as int,
      silverPieces: fields[3] as int,
      copperPieces: fields[4] as int,
      needWallet: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Wallet obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.platinumPieces)
      ..writeByte(1)
      ..write(obj.goldPieces)
      ..writeByte(2)
      ..write(obj.electrumPieces)
      ..writeByte(3)
      ..write(obj.silverPieces)
      ..writeByte(4)
      ..write(obj.copperPieces)
      ..writeByte(5)
      ..write(obj.needWallet);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WalletAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wallet _$WalletFromJson(Map<String, dynamic> json) => Wallet(
      platinumPieces: json['platinumPieces'] as int,
      goldPieces: json['goldPieces'] as int,
      electrumPieces: json['electrumPieces'] as int,
      silverPieces: json['silverPieces'] as int,
      copperPieces: json['copperPieces'] as int,
      needWallet: json['needWallet'] as bool,
    );

Map<String, dynamic> _$WalletToJson(Wallet instance) => <String, dynamic>{
      'platinumPieces': instance.platinumPieces,
      'goldPieces': instance.goldPieces,
      'electrumPieces': instance.electrumPieces,
      'silverPieces': instance.silverPieces,
      'copperPieces': instance.copperPieces,
      'needWallet': instance.needWallet,
    };
