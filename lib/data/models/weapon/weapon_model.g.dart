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
      description: fields[2] as String,
      damage: fields[3] as int,
      quantityOfDamageDices: fields[4] as int,
      damageDice: fields[5] as Dice,
      plusDamageDice: fields[6] as Dice?,
      quantityOfPlusDamageDices: fields[7] as int?,
      checkDice: fields[8] as Dice,
      range: fields[9] as int,
      img: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Weapon obj) {
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
      other is WeaponAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weapon _$WeaponFromJson(Map<String, dynamic> json) => Weapon(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      damage: json['damage'] as int,
      quantityOfDamageDices: json['quantityOfDamageDices'] as int,
      damageDice: Dice.fromJson(json['damageDice'] as Map<String, dynamic>),
      plusDamageDice: json['plusDamageDice'] == null
          ? null
          : Dice.fromJson(json['plusDamageDice'] as Map<String, dynamic>),
      quantityOfPlusDamageDices: json['quantityOfPlusDamageDices'] as int?,
      checkDice: Dice.fromJson(json['checkDice'] as Map<String, dynamic>),
      range: json['range'] as int,
      img: json['img'] as String,
    );

Map<String, dynamic> _$WeaponToJson(Weapon instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'damage': instance.damage,
      'quantityOfDamageDices': instance.quantityOfDamageDices,
      'damageDice': instance.damageDice,
      'plusDamageDice': instance.plusDamageDice,
      'quantityOfPlusDamageDices': instance.quantityOfPlusDamageDices,
      'checkDice': instance.checkDice,
      'range': instance.range,
      'img': instance.img,
    };
