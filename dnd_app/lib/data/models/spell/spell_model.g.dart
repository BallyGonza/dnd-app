// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpellAdapter extends TypeAdapter<Spell> {
  @override
  final int typeId = 8;

  @override
  Spell read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Spell(
      name: fields[0] as String,
      level: fields[1] as int,
      range: fields[2] as String,
      castTime: fields[3] as String,
      duration: fields[4] as String,
      comp: fields[5] as String,
      description: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Spell obj) {
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
      other is SpellAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Spell _$SpellFromJson(Map<String, dynamic> json) => Spell(
      name: json['name'] as String,
      level: json['level'] as int,
      range: json['range'] as String,
      castTime: json['castTime'] as String,
      duration: json['duration'] as String,
      comp: json['comp'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$SpellToJson(Spell instance) => <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
      'range': instance.range,
      'castTime': instance.castTime,
      'duration': instance.duration,
      'comp': instance.comp,
      'description': instance.description,
    };
