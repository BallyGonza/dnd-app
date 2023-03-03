// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PetAdapter extends TypeAdapter<Pet> {
  @override
  final int typeId = 5;

  @override
  Pet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pet(
      name: fields[0] as String,
      race: fields[1] as String,
      img: fields[2] as String,
      profileImg: fields[3] as String,
      armor: fields[4] as int,
      speed: fields[5] as int,
      healthPoints: fields[6] as HealthPoints,
      abilities: (fields[7] as List).cast<Ability>(),
      savingThrows: (fields[8] as List).cast<SavingThrow>(),
      weapons: (fields[9] as List).cast<Weapon>(),
      traits: (fields[10] as List).cast<Trait>(),
      allSkills: (fields[11] as List).cast<Skill>(),
      favoredEnemy: fields[12] as String,
      favoredTerrain: fields[13] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Pet obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.race)
      ..writeByte(2)
      ..write(obj.img)
      ..writeByte(3)
      ..write(obj.profileImg)
      ..writeByte(4)
      ..write(obj.armor)
      ..writeByte(5)
      ..write(obj.speed)
      ..writeByte(6)
      ..write(obj.healthPoints)
      ..writeByte(7)
      ..write(obj.abilities)
      ..writeByte(8)
      ..write(obj.savingThrows)
      ..writeByte(9)
      ..write(obj.weapons)
      ..writeByte(10)
      ..write(obj.traits)
      ..writeByte(11)
      ..write(obj.allSkills)
      ..writeByte(12)
      ..write(obj.favoredEnemy)
      ..writeByte(13)
      ..write(obj.favoredTerrain);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
