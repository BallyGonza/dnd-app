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
      id: fields[0] as int,
      name: fields[1] as String,
      sides: fields[2] as int,
      img: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DiceModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.sides)
      ..writeByte(3)
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
