// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterAdapter extends TypeAdapter<Character> {
  @override
  final int typeId = 0;

  @override
  Character read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Character(
      id: fields[0] as int,
      name: fields[1] as String,
      lastName: fields[2] as String,
      img: fields[3] as String,
      profileImg: fields[4] as String,
      banner: fields[5] as String,
      race: fields[6] as String,
      classes: (fields[7] as List).cast<String>(),
      level: fields[8] as int,
      armor: fields[9] as int,
      initiative: fields[10] as int,
      speed: fields[11] as int,
      passivePerception: fields[12] as int,
      hitDice: fields[13] as Dice,
      healthPoints: fields[14] as HealthPoints,
      abilities: (fields[15] as List).cast<Ability>(),
      skills: (fields[16] as List).cast<Skill>(),
      savingThrows: (fields[17] as List).cast<SavingThrow>(),
      weapons: (fields[18] as List).cast<Weapon>(),
      languages: fields[19] as String,
      traits: (fields[20] as List).cast<Trait>(),
      spells: (fields[21] as List).cast<Spell>(),
      background: (fields[22] as List).cast<Background>(),
      backstory: fields[23] as String,
      pet: (fields[24] as List).cast<Pet>(),
      notes: (fields[25] as List).cast<Note>(),
    );
  }

  @override
  void write(BinaryWriter writer, Character obj) {
    writer
      ..writeByte(26)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.lastName)
      ..writeByte(3)
      ..write(obj.img)
      ..writeByte(4)
      ..write(obj.profileImg)
      ..writeByte(5)
      ..write(obj.banner)
      ..writeByte(6)
      ..write(obj.race)
      ..writeByte(7)
      ..write(obj.classes)
      ..writeByte(8)
      ..write(obj.level)
      ..writeByte(9)
      ..write(obj.armor)
      ..writeByte(10)
      ..write(obj.initiative)
      ..writeByte(11)
      ..write(obj.speed)
      ..writeByte(12)
      ..write(obj.passivePerception)
      ..writeByte(13)
      ..write(obj.hitDice)
      ..writeByte(14)
      ..write(obj.healthPoints)
      ..writeByte(15)
      ..write(obj.abilities)
      ..writeByte(16)
      ..write(obj.skills)
      ..writeByte(17)
      ..write(obj.savingThrows)
      ..writeByte(18)
      ..write(obj.weapons)
      ..writeByte(19)
      ..write(obj.languages)
      ..writeByte(20)
      ..write(obj.traits)
      ..writeByte(21)
      ..write(obj.spells)
      ..writeByte(22)
      ..write(obj.background)
      ..writeByte(23)
      ..write(obj.backstory)
      ..writeByte(24)
      ..write(obj.pet)
      ..writeByte(25)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      id: json['id'] as int,
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      img: json['img'] as String,
      profileImg: json['profileImg'] as String,
      banner: json['banner'] as String,
      race: json['race'] as String,
      classes:
          (json['classes'] as List<dynamic>).map((e) => e as String).toList(),
      level: json['level'] as int,
      armor: json['armor'] as int,
      initiative: json['initiative'] as int,
      speed: json['speed'] as int,
      passivePerception: json['passivePerception'] as int,
      hitDice: Dice.fromJson(json['hitDice'] as Map<String, dynamic>),
      healthPoints:
          HealthPoints.fromJson(json['healthPoints'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => Ability.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: (json['skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      savingThrows: (json['savingThrows'] as List<dynamic>)
          .map((e) => SavingThrow.fromJson(e as Map<String, dynamic>))
          .toList(),
      weapons: (json['weapons'] as List<dynamic>)
          .map((e) => Weapon.fromJson(e as Map<String, dynamic>))
          .toList(),
      languages: json['languages'] as String,
      traits: (json['traits'] as List<dynamic>)
          .map((e) => Trait.fromJson(e as Map<String, dynamic>))
          .toList(),
      spells: (json['spells'] as List<dynamic>)
          .map((e) => Spell.fromJson(e as Map<String, dynamic>))
          .toList(),
      background: (json['background'] as List<dynamic>)
          .map((e) => Background.fromJson(e as Map<String, dynamic>))
          .toList(),
      backstory: json['backstory'] as String,
      pet: (json['pet'] as List<dynamic>)
          .map((e) => Pet.fromJson(e as Map<String, dynamic>))
          .toList(),
      notes: (json['notes'] as List<dynamic>)
          .map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'img': instance.img,
      'profileImg': instance.profileImg,
      'banner': instance.banner,
      'race': instance.race,
      'classes': instance.classes,
      'level': instance.level,
      'armor': instance.armor,
      'initiative': instance.initiative,
      'speed': instance.speed,
      'passivePerception': instance.passivePerception,
      'hitDice': instance.hitDice,
      'healthPoints': instance.healthPoints,
      'abilities': instance.abilities,
      'skills': instance.skills,
      'savingThrows': instance.savingThrows,
      'weapons': instance.weapons,
      'languages': instance.languages,
      'traits': instance.traits,
      'spells': instance.spells,
      'background': instance.background,
      'backstory': instance.backstory,
      'pet': instance.pet,
      'notes': instance.notes,
    };
