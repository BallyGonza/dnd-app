// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnimalAdapter extends TypeAdapter<Animal> {
  @override
  final int typeId = 5;

  @override
  Animal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Animal(
      name: fields[0] as String,
      race: fields[1] as String,
      img: fields[2] as String,
      profileImg: fields[3] as String,
      armor: fields[4] as int,
      speed: fields[5] as int,
      climb: fields[6] as int?,
      fly: fields[7] as int?,
      healthPoints: fields[8] as HealthPoints,
      abilities: (fields[9] as List).cast<Ability>(),
      savingThrows: (fields[10] as List).cast<SavingThrow>(),
      weapons: (fields[11] as List).cast<Weapon>(),
      traits: (fields[12] as List).cast<Trait>(),
      skills: (fields[13] as List).cast<Skill>(),
    );
  }

  @override
  void write(BinaryWriter writer, Animal obj) {
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
      other is AnimalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Animal _$AnimalFromJson(Map<String, dynamic> json) => Animal(
      name: json['name'] as String,
      race: json['race'] as String,
      img: json['img'] as String,
      profileImg: json['profileImg'] as String,
      armor: json['armor'] as int,
      speed: json['speed'] as int,
      climb: json['climb'] as int?,
      fly: json['fly'] as int?,
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
      skills: (json['skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimalToJson(Animal instance) => <String, dynamic>{
      'name': instance.name,
      'race': instance.race,
      'img': instance.img,
      'profileImg': instance.profileImg,
      'armor': instance.armor,
      'speed': instance.speed,
      'climb': instance.climb,
      'fly': instance.fly,
      'healthPoints': instance.healthPoints,
      'abilities': instance.abilities,
      'savingThrows': instance.savingThrows,
      'weapons': instance.weapons,
      'traits': instance.traits,
      'skills': instance.skills,
    };
