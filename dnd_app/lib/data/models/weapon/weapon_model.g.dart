// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeaponAdapter extends TypeAdapter<Weapon> {
  @override
  final int typeId = 10;

  @override
  Weapon read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Weapon(
      id: fields[0] as int,
      name: fields[1] as String,
      damage: fields[2] as int,
      quantityOfDices: fields[3] as int,
      damageDice: fields[4] as Dice,
      checkDice: fields[5] as Dice,
      range: fields[6] as int,
      img: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Weapon obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.damage)
      ..writeByte(3)
      ..write(obj.quantityOfDices)
      ..writeByte(4)
      ..write(obj.damageDice)
      ..writeByte(5)
      ..write(obj.checkDice)
      ..writeByte(6)
      ..write(obj.range)
      ..writeByte(7)
      ..write(obj.img);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
