// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_points_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HealthPointsModelAdapter extends TypeAdapter<HealthPointsModel> {
  @override
  final int typeId = 1;

  @override
  HealthPointsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthPointsModel(
      current: fields[0] as int,
      max: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HealthPointsModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.current)
      ..writeByte(1)
      ..write(obj.max);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthPointsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
