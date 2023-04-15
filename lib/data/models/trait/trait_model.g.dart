// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trait_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TraitModelAdapter extends TypeAdapter<TraitModel> {
  @override
  final int typeId = 9;

  @override
  TraitModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TraitModel(
      name: fields[0] as String,
      description: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TraitModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TraitModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
