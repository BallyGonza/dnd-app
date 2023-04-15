// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiceModelAdapter extends TypeAdapter<DiceModel> {
  @override
  final int typeId = 2;

  @override
  DiceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiceModel(
      name: fields[0] as String,
      sides: fields[1] as int,
      img: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DiceModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.sides)
      ..writeByte(2)
      ..write(obj.img);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
