// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpellModelAdapter extends TypeAdapter<SpellModel> {
  @override
  final int typeId = 8;

  @override
  SpellModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpellModel(
      name: fields[0] as String,
      level: fields[1] as String,
      range: fields[2] as String,
      castTime: fields[3] as String,
      duration: fields[4] as String,
      comp: fields[5] as String,
      description: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SpellModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.level)
      ..writeByte(2)
      ..write(obj.range)
      ..writeByte(3)
      ..write(obj.castTime)
      ..writeByte(4)
      ..write(obj.duration)
      ..writeByte(5)
      ..write(obj.comp)
      ..writeByte(6)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpellModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
