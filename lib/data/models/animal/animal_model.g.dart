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
      id: fields[0] as int,
      name: fields[1] as String,
      race: fields[2] as String,
      img: fields[3] as String,
      profileImg: fields[4] as String,
      armor: fields[5] as int,
      speed: fields[6] as int,
      climb: fields[7] as int?,
      fly: fields[8] as int?,
      healthPoints: fields[9] as HealthPointsModel,
      abilities: (fields[10] as List).cast<AbilityModel>(),
      savingThrows: (fields[11] as List).cast<SavingThrowModel>(),
      weapons: (fields[12] as List).cast<WeaponModel>(),
      traits: (fields[13] as List).cast<TraitModel>(),
      skills: (fields[14] as List).cast<SkillModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, AnimalModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.race)
      ..writeByte(3)
      ..write(obj.img)
      ..writeByte(4)
      ..write(obj.profileImg)
      ..writeByte(5)
      ..write(obj.armor)
      ..writeByte(6)
      ..write(obj.speed)
      ..writeByte(7)
      ..write(obj.climb)
      ..writeByte(8)
      ..write(obj.fly)
      ..writeByte(9)
      ..write(obj.healthPoints)
      ..writeByte(10)
      ..write(obj.abilities)
      ..writeByte(11)
      ..write(obj.savingThrows)
      ..writeByte(12)
      ..write(obj.weapons)
      ..writeByte(13)
      ..write(obj.traits)
      ..writeByte(14)
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
