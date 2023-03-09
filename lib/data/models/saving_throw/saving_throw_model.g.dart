// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saving_throw_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavingThrowAdapter extends TypeAdapter<SavingThrow> {
  @override
  final int typeId = 6;

  @override
  SavingThrow read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavingThrow(
      name: fields[0] as String,
      modifier: fields[1] as int,
      proficiency: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, SavingThrow obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.modifier)
      ..writeByte(2)
      ..write(obj.proficiency);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavingThrowAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavingThrow _$SavingThrowFromJson(Map<String, dynamic> json) => SavingThrow(
      name: json['name'] as String,
      modifier: json['modifier'] as int,
      proficiency: json['proficiency'] as bool,
    );

Map<String, dynamic> _$SavingThrowToJson(SavingThrow instance) =>
    <String, dynamic>{
      'name': instance.name,
      'modifier': instance.modifier,
      'proficiency': instance.proficiency,
    };
