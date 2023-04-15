// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WalletModelAdapter extends TypeAdapter<WalletModel> {
  @override
  final int typeId = 12;

  @override
  WalletModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WalletModel(
      platinumPieces: fields[0] as int,
      goldPieces: fields[1] as int,
      electrumPieces: fields[2] as int,
      silverPieces: fields[3] as int,
      copperPieces: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, WalletModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.platinumPieces)
      ..writeByte(1)
      ..write(obj.goldPieces)
      ..writeByte(2)
      ..write(obj.electrumPieces)
      ..writeByte(3)
      ..write(obj.silverPieces)
      ..writeByte(4)
      ..write(obj.copperPieces);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WalletModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
