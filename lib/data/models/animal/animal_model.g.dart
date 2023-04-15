// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnimalModelAdapter extends TypeAdapter<AnimalModel> {
  @override
  final int typeId = 5;

  @override
  AnimalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AnimalModel(
      name: fields[0] as String,
      race: fields[1] as String,
      img: fields[2] as String,
      profileImg: fields[3] as String,
      armor: fields[4] as int,
      speed: fields[5] as int,
      climb: fields[6] as int?,
      fly: fields[7] as int?,
      healthPoints: fields[8] as HealthPointsModel,
      abilities: (fields[9] as List).cast<AbilityModel>(),
      savingThrows: (fields[10] as List).cast<SavingThrowModel>(),
      weapons: (fields[11] as List).cast<WeaponModel>(),
      traits: (fields[12] as List).cast<TraitModel>(),
      skills: (fields[13] as List).cast<SkillModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, AnimalModel obj) {
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
      ..write(obj.climb)
      ..writeByte(7)
      ..write(obj.fly)
      ..writeByte(8)
      ..write(obj.healthPoints)
      ..writeByte(9)
      ..write(obj.abilities)
      ..writeByte(10)
      ..write(obj.savingThrows)
      ..writeByte(11)
      ..write(obj.weapons)
      ..writeByte(12)
      ..write(obj.traits)
      ..writeByte(13)
      ..write(obj.skills);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnimalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
