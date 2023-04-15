// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeaponModelAdapter extends TypeAdapter<WeaponModel> {
  @override
  final int typeId = 10;

  @override
  WeaponModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponModel(
      id: fields[0] as int,
      name: fields[1] as String,
      description: fields[2] as String,
      damage: fields[3] as int,
      quantityOfDamageDices: fields[4] as int,
      damageDice: fields[5] as DiceModel,
      plusDamageDice: fields[6] as DiceModel?,
      quantityOfPlusDamageDices: fields[7] as int?,
      checkDice: fields[8] as DiceModel,
      range: fields[9] as int,
      img: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WeaponModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.damage)
      ..writeByte(4)
      ..write(obj.quantityOfDamageDices)
      ..writeByte(5)
      ..write(obj.damageDice)
      ..writeByte(6)
      ..write(obj.plusDamageDice)
      ..writeByte(7)
      ..write(obj.quantityOfPlusDamageDices)
      ..writeByte(8)
      ..write(obj.checkDice)
      ..writeByte(9)
      ..write(obj.range)
      ..writeByte(10)
      ..write(obj.img);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
