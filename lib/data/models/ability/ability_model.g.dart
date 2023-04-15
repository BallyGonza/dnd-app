// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AbilityModelAdapter extends TypeAdapter<AbilityModel> {
  @override
  final int typeId = 3;

  @override
  AbilityModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AbilityModel(
      name: fields[0] as String,
      score: fields[1] as int,
      modifier: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AbilityModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.score)
      ..writeByte(2)
      ..write(obj.modifier);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbilityModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
