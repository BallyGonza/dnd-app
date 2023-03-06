// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trait_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TraitAdapter extends TypeAdapter<Trait> {
  @override
  final int typeId = 9;

  @override
  Trait read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Trait(
      name: fields[0] as String,
      description: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Trait obj) {
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
      other is TraitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trait _$TraitFromJson(Map<String, dynamic> json) => Trait(
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$TraitToJson(Trait instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };
