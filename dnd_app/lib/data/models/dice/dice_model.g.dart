// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiceAdapter extends TypeAdapter<Dice> {
  @override
  final int typeId = 2;

  @override
  Dice read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Dice(
      name: fields[0] as String,
      sides: fields[1] as int,
      img: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Dice obj) {
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
      other is DiceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dice _$DiceFromJson(Map<String, dynamic> json) => Dice(
      name: json['name'] as String,
      sides: json['sides'] as int,
      img: json['img'] as String,
    );

Map<String, dynamic> _$DiceToJson(Dice instance) => <String, dynamic>{
      'name': instance.name,
      'sides': instance.sides,
      'img': instance.img,
    };
