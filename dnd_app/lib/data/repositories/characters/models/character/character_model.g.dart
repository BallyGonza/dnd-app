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
      favoredEnemy: fields[26] as String,
      favoredTerrain: fields[27] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Character obj) {
    writer
      ..writeByte(28)
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
      ..write(obj.notes)
      ..writeByte(26)
      ..write(obj.favoredEnemy)
      ..writeByte(27)
      ..write(obj.favoredTerrain);
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
