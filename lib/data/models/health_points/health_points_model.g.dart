// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_points_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HealthPointsAdapter extends TypeAdapter<HealthPoints> {
  @override
  final int typeId = 1;

  @override
  HealthPoints read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthPoints(
      current: fields[0] as int,
      max: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HealthPoints obj) {
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
      other is HealthPointsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthPoints _$HealthPointsFromJson(Map<String, dynamic> json) => HealthPoints(
      current: json['current'] as int,
      max: json['max'] as int,
    );

Map<String, dynamic> _$HealthPointsToJson(HealthPoints instance) =>
    <String, dynamic>{
      'current': instance.current,
      'max': instance.max,
    };
