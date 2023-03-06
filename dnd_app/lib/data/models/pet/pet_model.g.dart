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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pet _$PetFromJson(Map<String, dynamic> json) => Pet(
      name: json['name'] as String,
      race: json['race'] as String,
      img: json['img'] as String,
      profileImg: json['profileImg'] as String,
      armor: json['armor'] as int,
      speed: json['speed'] as int,
      healthPoints:
          HealthPoints.fromJson(json['healthPoints'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => Ability.fromJson(e as Map<String, dynamic>))
          .toList(),
      savingThrows: (json['savingThrows'] as List<dynamic>)
          .map((e) => SavingThrow.fromJson(e as Map<String, dynamic>))
          .toList(),
      weapons: (json['weapons'] as List<dynamic>)
          .map((e) => Weapon.fromJson(e as Map<String, dynamic>))
          .toList(),
      traits: (json['traits'] as List<dynamic>)
          .map((e) => Trait.fromJson(e as Map<String, dynamic>))
          .toList(),
      allSkills: (json['allSkills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      favoredEnemy: json['favoredEnemy'] as String,
      favoredTerrain: json['favoredTerrain'] as String,
    );

Map<String, dynamic> _$PetToJson(Pet instance) => <String, dynamic>{
      'name': instance.name,
      'race': instance.race,
      'img': instance.img,
      'profileImg': instance.profileImg,
      'armor': instance.armor,
      'speed': instance.speed,
      'healthPoints': instance.healthPoints,
      'abilities': instance.abilities,
      'savingThrows': instance.savingThrows,
      'weapons': instance.weapons,
      'traits': instance.traits,
      'allSkills': instance.allSkills,
      'favoredEnemy': instance.favoredEnemy,
      'favoredTerrain': instance.favoredTerrain,
    };
