// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Character extends DataClass implements Insertable<Character> {
  final int id;
  final String name;
  final String lastName;
  final String img;
  final String profileImg;
  final String banner;
  final String race;
  final String classes;
  final int level;
  final int armor;
  final int initiative;
  final int speed;
  final int passivePerception;
  final String hitDice;
  final int currentHp;
  final int maxHp;
  final String abilities;
  final String allSkills;
  final String skills1;
  final String skills2;
  final String savingThrows;
  final String weapons;
  final String languages;
  final String traits;
  final String spells;
  final String background;
  final String backstory;
  final String pets;
  final String favoredEnemyList;
  final String favoredTerrainList;
  Character(
      {required this.id,
      required this.name,
      required this.lastName,
      required this.img,
      required this.profileImg,
      required this.banner,
      required this.race,
      required this.classes,
      required this.level,
      required this.armor,
      required this.initiative,
      required this.speed,
      required this.passivePerception,
      required this.hitDice,
      required this.currentHp,
      required this.maxHp,
      required this.abilities,
      required this.allSkills,
      required this.skills1,
      required this.skills2,
      required this.savingThrows,
      required this.weapons,
      required this.languages,
      required this.traits,
      required this.spells,
      required this.background,
      required this.backstory,
      required this.pets,
      required this.favoredEnemyList,
      required this.favoredTerrainList});
  factory Character.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Character(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      lastName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name'])!,
      img: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}img'])!,
      profileImg: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}profile_img'])!,
      banner: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}banner'])!,
      race: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}race'])!,
      classes: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}classes'])!,
      level: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}level'])!,
      armor: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}armor'])!,
      initiative: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}initiative'])!,
      speed: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}speed'])!,
      passivePerception: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}passive_perception'])!,
      hitDice: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}hit_dice'])!,
      currentHp: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}current_hp'])!,
      maxHp: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}max_hp'])!,
      abilities: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}abilities'])!,
      allSkills: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}all_skills'])!,
      skills1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}skills1'])!,
      skills2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}skills2'])!,
      savingThrows: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}saving_throws'])!,
      weapons: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}weapons'])!,
      languages: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}languages'])!,
      traits: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}traits'])!,
      spells: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}spells'])!,
      background: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}background'])!,
      backstory: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}backstory'])!,
      pets: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pets'])!,
      favoredEnemyList: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}favored_enemy_list'])!,
      favoredTerrainList: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}favored_terrain_list'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['last_name'] = Variable<String>(lastName);
    map['img'] = Variable<String>(img);
    map['profile_img'] = Variable<String>(profileImg);
    map['banner'] = Variable<String>(banner);
    map['race'] = Variable<String>(race);
    map['classes'] = Variable<String>(classes);
    map['level'] = Variable<int>(level);
    map['armor'] = Variable<int>(armor);
    map['initiative'] = Variable<int>(initiative);
    map['speed'] = Variable<int>(speed);
    map['passive_perception'] = Variable<int>(passivePerception);
    map['hit_dice'] = Variable<String>(hitDice);
    map['current_hp'] = Variable<int>(currentHp);
    map['max_hp'] = Variable<int>(maxHp);
    map['abilities'] = Variable<String>(abilities);
    map['all_skills'] = Variable<String>(allSkills);
    map['skills1'] = Variable<String>(skills1);
    map['skills2'] = Variable<String>(skills2);
    map['saving_throws'] = Variable<String>(savingThrows);
    map['weapons'] = Variable<String>(weapons);
    map['languages'] = Variable<String>(languages);
    map['traits'] = Variable<String>(traits);
    map['spells'] = Variable<String>(spells);
    map['background'] = Variable<String>(background);
    map['backstory'] = Variable<String>(backstory);
    map['pets'] = Variable<String>(pets);
    map['favored_enemy_list'] = Variable<String>(favoredEnemyList);
    map['favored_terrain_list'] = Variable<String>(favoredTerrainList);
    return map;
  }

  CharactersCompanion toCompanion(bool nullToAbsent) {
    return CharactersCompanion(
      id: Value(id),
      name: Value(name),
      lastName: Value(lastName),
      img: Value(img),
      profileImg: Value(profileImg),
      banner: Value(banner),
      race: Value(race),
      classes: Value(classes),
      level: Value(level),
      armor: Value(armor),
      initiative: Value(initiative),
      speed: Value(speed),
      passivePerception: Value(passivePerception),
      hitDice: Value(hitDice),
      currentHp: Value(currentHp),
      maxHp: Value(maxHp),
      abilities: Value(abilities),
      allSkills: Value(allSkills),
      skills1: Value(skills1),
      skills2: Value(skills2),
      savingThrows: Value(savingThrows),
      weapons: Value(weapons),
      languages: Value(languages),
      traits: Value(traits),
      spells: Value(spells),
      background: Value(background),
      backstory: Value(backstory),
      pets: Value(pets),
      favoredEnemyList: Value(favoredEnemyList),
      favoredTerrainList: Value(favoredTerrainList),
    );
  }

  factory Character.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Character(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      lastName: serializer.fromJson<String>(json['lastName']),
      img: serializer.fromJson<String>(json['img']),
      profileImg: serializer.fromJson<String>(json['profileImg']),
      banner: serializer.fromJson<String>(json['banner']),
      race: serializer.fromJson<String>(json['race']),
      classes: serializer.fromJson<String>(json['classes']),
      level: serializer.fromJson<int>(json['level']),
      armor: serializer.fromJson<int>(json['armor']),
      initiative: serializer.fromJson<int>(json['initiative']),
      speed: serializer.fromJson<int>(json['speed']),
      passivePerception: serializer.fromJson<int>(json['passivePerception']),
      hitDice: serializer.fromJson<String>(json['hitDice']),
      currentHp: serializer.fromJson<int>(json['currentHp']),
      maxHp: serializer.fromJson<int>(json['maxHp']),
      abilities: serializer.fromJson<String>(json['abilities']),
      allSkills: serializer.fromJson<String>(json['allSkills']),
      skills1: serializer.fromJson<String>(json['skills1']),
      skills2: serializer.fromJson<String>(json['skills2']),
      savingThrows: serializer.fromJson<String>(json['savingThrows']),
      weapons: serializer.fromJson<String>(json['weapons']),
      languages: serializer.fromJson<String>(json['languages']),
      traits: serializer.fromJson<String>(json['traits']),
      spells: serializer.fromJson<String>(json['spells']),
      background: serializer.fromJson<String>(json['background']),
      backstory: serializer.fromJson<String>(json['backstory']),
      pets: serializer.fromJson<String>(json['pets']),
      favoredEnemyList: serializer.fromJson<String>(json['favoredEnemyList']),
      favoredTerrainList:
          serializer.fromJson<String>(json['favoredTerrainList']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'lastName': serializer.toJson<String>(lastName),
      'img': serializer.toJson<String>(img),
      'profileImg': serializer.toJson<String>(profileImg),
      'banner': serializer.toJson<String>(banner),
      'race': serializer.toJson<String>(race),
      'classes': serializer.toJson<String>(classes),
      'level': serializer.toJson<int>(level),
      'armor': serializer.toJson<int>(armor),
      'initiative': serializer.toJson<int>(initiative),
      'speed': serializer.toJson<int>(speed),
      'passivePerception': serializer.toJson<int>(passivePerception),
      'hitDice': serializer.toJson<String>(hitDice),
      'currentHp': serializer.toJson<int>(currentHp),
      'maxHp': serializer.toJson<int>(maxHp),
      'abilities': serializer.toJson<String>(abilities),
      'allSkills': serializer.toJson<String>(allSkills),
      'skills1': serializer.toJson<String>(skills1),
      'skills2': serializer.toJson<String>(skills2),
      'savingThrows': serializer.toJson<String>(savingThrows),
      'weapons': serializer.toJson<String>(weapons),
      'languages': serializer.toJson<String>(languages),
      'traits': serializer.toJson<String>(traits),
      'spells': serializer.toJson<String>(spells),
      'background': serializer.toJson<String>(background),
      'backstory': serializer.toJson<String>(backstory),
      'pets': serializer.toJson<String>(pets),
      'favoredEnemyList': serializer.toJson<String>(favoredEnemyList),
      'favoredTerrainList': serializer.toJson<String>(favoredTerrainList),
    };
  }

  Character copyWith(
          {int? id,
          String? name,
          String? lastName,
          String? img,
          String? profileImg,
          String? banner,
          String? race,
          String? classes,
          int? level,
          int? armor,
          int? initiative,
          int? speed,
          int? passivePerception,
          String? hitDice,
          int? currentHp,
          int? maxHp,
          String? abilities,
          String? allSkills,
          String? skills1,
          String? skills2,
          String? savingThrows,
          String? weapons,
          String? languages,
          String? traits,
          String? spells,
          String? background,
          String? backstory,
          String? pets,
          String? favoredEnemyList,
          String? favoredTerrainList}) =>
      Character(
        id: id ?? this.id,
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        img: img ?? this.img,
        profileImg: profileImg ?? this.profileImg,
        banner: banner ?? this.banner,
        race: race ?? this.race,
        classes: classes ?? this.classes,
        level: level ?? this.level,
        armor: armor ?? this.armor,
        initiative: initiative ?? this.initiative,
        speed: speed ?? this.speed,
        passivePerception: passivePerception ?? this.passivePerception,
        hitDice: hitDice ?? this.hitDice,
        currentHp: currentHp ?? this.currentHp,
        maxHp: maxHp ?? this.maxHp,
        abilities: abilities ?? this.abilities,
        allSkills: allSkills ?? this.allSkills,
        skills1: skills1 ?? this.skills1,
        skills2: skills2 ?? this.skills2,
        savingThrows: savingThrows ?? this.savingThrows,
        weapons: weapons ?? this.weapons,
        languages: languages ?? this.languages,
        traits: traits ?? this.traits,
        spells: spells ?? this.spells,
        background: background ?? this.background,
        backstory: backstory ?? this.backstory,
        pets: pets ?? this.pets,
        favoredEnemyList: favoredEnemyList ?? this.favoredEnemyList,
        favoredTerrainList: favoredTerrainList ?? this.favoredTerrainList,
      );
  @override
  String toString() {
    return (StringBuffer('Character(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lastName: $lastName, ')
          ..write('img: $img, ')
          ..write('profileImg: $profileImg, ')
          ..write('banner: $banner, ')
          ..write('race: $race, ')
          ..write('classes: $classes, ')
          ..write('level: $level, ')
          ..write('armor: $armor, ')
          ..write('initiative: $initiative, ')
          ..write('speed: $speed, ')
          ..write('passivePerception: $passivePerception, ')
          ..write('hitDice: $hitDice, ')
          ..write('currentHp: $currentHp, ')
          ..write('maxHp: $maxHp, ')
          ..write('abilities: $abilities, ')
          ..write('allSkills: $allSkills, ')
          ..write('skills1: $skills1, ')
          ..write('skills2: $skills2, ')
          ..write('savingThrows: $savingThrows, ')
          ..write('weapons: $weapons, ')
          ..write('languages: $languages, ')
          ..write('traits: $traits, ')
          ..write('spells: $spells, ')
          ..write('background: $background, ')
          ..write('backstory: $backstory, ')
          ..write('pets: $pets, ')
          ..write('favoredEnemyList: $favoredEnemyList, ')
          ..write('favoredTerrainList: $favoredTerrainList')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        name,
        lastName,
        img,
        profileImg,
        banner,
        race,
        classes,
        level,
        armor,
        initiative,
        speed,
        passivePerception,
        hitDice,
        currentHp,
        maxHp,
        abilities,
        allSkills,
        skills1,
        skills2,
        savingThrows,
        weapons,
        languages,
        traits,
        spells,
        background,
        backstory,
        pets,
        favoredEnemyList,
        favoredTerrainList
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Character &&
          other.id == this.id &&
          other.name == this.name &&
          other.lastName == this.lastName &&
          other.img == this.img &&
          other.profileImg == this.profileImg &&
          other.banner == this.banner &&
          other.race == this.race &&
          other.classes == this.classes &&
          other.level == this.level &&
          other.armor == this.armor &&
          other.initiative == this.initiative &&
          other.speed == this.speed &&
          other.passivePerception == this.passivePerception &&
          other.hitDice == this.hitDice &&
          other.currentHp == this.currentHp &&
          other.maxHp == this.maxHp &&
          other.abilities == this.abilities &&
          other.allSkills == this.allSkills &&
          other.skills1 == this.skills1 &&
          other.skills2 == this.skills2 &&
          other.savingThrows == this.savingThrows &&
          other.weapons == this.weapons &&
          other.languages == this.languages &&
          other.traits == this.traits &&
          other.spells == this.spells &&
          other.background == this.background &&
          other.backstory == this.backstory &&
          other.pets == this.pets &&
          other.favoredEnemyList == this.favoredEnemyList &&
          other.favoredTerrainList == this.favoredTerrainList);
}

class CharactersCompanion extends UpdateCompanion<Character> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> lastName;
  final Value<String> img;
  final Value<String> profileImg;
  final Value<String> banner;
  final Value<String> race;
  final Value<String> classes;
  final Value<int> level;
  final Value<int> armor;
  final Value<int> initiative;
  final Value<int> speed;
  final Value<int> passivePerception;
  final Value<String> hitDice;
  final Value<int> currentHp;
  final Value<int> maxHp;
  final Value<String> abilities;
  final Value<String> allSkills;
  final Value<String> skills1;
  final Value<String> skills2;
  final Value<String> savingThrows;
  final Value<String> weapons;
  final Value<String> languages;
  final Value<String> traits;
  final Value<String> spells;
  final Value<String> background;
  final Value<String> backstory;
  final Value<String> pets;
  final Value<String> favoredEnemyList;
  final Value<String> favoredTerrainList;
  const CharactersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.lastName = const Value.absent(),
    this.img = const Value.absent(),
    this.profileImg = const Value.absent(),
    this.banner = const Value.absent(),
    this.race = const Value.absent(),
    this.classes = const Value.absent(),
    this.level = const Value.absent(),
    this.armor = const Value.absent(),
    this.initiative = const Value.absent(),
    this.speed = const Value.absent(),
    this.passivePerception = const Value.absent(),
    this.hitDice = const Value.absent(),
    this.currentHp = const Value.absent(),
    this.maxHp = const Value.absent(),
    this.abilities = const Value.absent(),
    this.allSkills = const Value.absent(),
    this.skills1 = const Value.absent(),
    this.skills2 = const Value.absent(),
    this.savingThrows = const Value.absent(),
    this.weapons = const Value.absent(),
    this.languages = const Value.absent(),
    this.traits = const Value.absent(),
    this.spells = const Value.absent(),
    this.background = const Value.absent(),
    this.backstory = const Value.absent(),
    this.pets = const Value.absent(),
    this.favoredEnemyList = const Value.absent(),
    this.favoredTerrainList = const Value.absent(),
  });
  CharactersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String lastName,
    required String img,
    required String profileImg,
    required String banner,
    required String race,
    required String classes,
    required int level,
    required int armor,
    required int initiative,
    required int speed,
    required int passivePerception,
    required String hitDice,
    required int currentHp,
    required int maxHp,
    required String abilities,
    required String allSkills,
    required String skills1,
    required String skills2,
    required String savingThrows,
    required String weapons,
    required String languages,
    required String traits,
    required String spells,
    required String background,
    required String backstory,
    required String pets,
    required String favoredEnemyList,
    required String favoredTerrainList,
  })  : name = Value(name),
        lastName = Value(lastName),
        img = Value(img),
        profileImg = Value(profileImg),
        banner = Value(banner),
        race = Value(race),
        classes = Value(classes),
        level = Value(level),
        armor = Value(armor),
        initiative = Value(initiative),
        speed = Value(speed),
        passivePerception = Value(passivePerception),
        hitDice = Value(hitDice),
        currentHp = Value(currentHp),
        maxHp = Value(maxHp),
        abilities = Value(abilities),
        allSkills = Value(allSkills),
        skills1 = Value(skills1),
        skills2 = Value(skills2),
        savingThrows = Value(savingThrows),
        weapons = Value(weapons),
        languages = Value(languages),
        traits = Value(traits),
        spells = Value(spells),
        background = Value(background),
        backstory = Value(backstory),
        pets = Value(pets),
        favoredEnemyList = Value(favoredEnemyList),
        favoredTerrainList = Value(favoredTerrainList);
  static Insertable<Character> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? lastName,
    Expression<String>? img,
    Expression<String>? profileImg,
    Expression<String>? banner,
    Expression<String>? race,
    Expression<String>? classes,
    Expression<int>? level,
    Expression<int>? armor,
    Expression<int>? initiative,
    Expression<int>? speed,
    Expression<int>? passivePerception,
    Expression<String>? hitDice,
    Expression<int>? currentHp,
    Expression<int>? maxHp,
    Expression<String>? abilities,
    Expression<String>? allSkills,
    Expression<String>? skills1,
    Expression<String>? skills2,
    Expression<String>? savingThrows,
    Expression<String>? weapons,
    Expression<String>? languages,
    Expression<String>? traits,
    Expression<String>? spells,
    Expression<String>? background,
    Expression<String>? backstory,
    Expression<String>? pets,
    Expression<String>? favoredEnemyList,
    Expression<String>? favoredTerrainList,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (lastName != null) 'last_name': lastName,
      if (img != null) 'img': img,
      if (profileImg != null) 'profile_img': profileImg,
      if (banner != null) 'banner': banner,
      if (race != null) 'race': race,
      if (classes != null) 'classes': classes,
      if (level != null) 'level': level,
      if (armor != null) 'armor': armor,
      if (initiative != null) 'initiative': initiative,
      if (speed != null) 'speed': speed,
      if (passivePerception != null) 'passive_perception': passivePerception,
      if (hitDice != null) 'hit_dice': hitDice,
      if (currentHp != null) 'current_hp': currentHp,
      if (maxHp != null) 'max_hp': maxHp,
      if (abilities != null) 'abilities': abilities,
      if (allSkills != null) 'all_skills': allSkills,
      if (skills1 != null) 'skills1': skills1,
      if (skills2 != null) 'skills2': skills2,
      if (savingThrows != null) 'saving_throws': savingThrows,
      if (weapons != null) 'weapons': weapons,
      if (languages != null) 'languages': languages,
      if (traits != null) 'traits': traits,
      if (spells != null) 'spells': spells,
      if (background != null) 'background': background,
      if (backstory != null) 'backstory': backstory,
      if (pets != null) 'pets': pets,
      if (favoredEnemyList != null) 'favored_enemy_list': favoredEnemyList,
      if (favoredTerrainList != null)
        'favored_terrain_list': favoredTerrainList,
    });
  }

  CharactersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? lastName,
      Value<String>? img,
      Value<String>? profileImg,
      Value<String>? banner,
      Value<String>? race,
      Value<String>? classes,
      Value<int>? level,
      Value<int>? armor,
      Value<int>? initiative,
      Value<int>? speed,
      Value<int>? passivePerception,
      Value<String>? hitDice,
      Value<int>? currentHp,
      Value<int>? maxHp,
      Value<String>? abilities,
      Value<String>? allSkills,
      Value<String>? skills1,
      Value<String>? skills2,
      Value<String>? savingThrows,
      Value<String>? weapons,
      Value<String>? languages,
      Value<String>? traits,
      Value<String>? spells,
      Value<String>? background,
      Value<String>? backstory,
      Value<String>? pets,
      Value<String>? favoredEnemyList,
      Value<String>? favoredTerrainList}) {
    return CharactersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      img: img ?? this.img,
      profileImg: profileImg ?? this.profileImg,
      banner: banner ?? this.banner,
      race: race ?? this.race,
      classes: classes ?? this.classes,
      level: level ?? this.level,
      armor: armor ?? this.armor,
      initiative: initiative ?? this.initiative,
      speed: speed ?? this.speed,
      passivePerception: passivePerception ?? this.passivePerception,
      hitDice: hitDice ?? this.hitDice,
      currentHp: currentHp ?? this.currentHp,
      maxHp: maxHp ?? this.maxHp,
      abilities: abilities ?? this.abilities,
      allSkills: allSkills ?? this.allSkills,
      skills1: skills1 ?? this.skills1,
      skills2: skills2 ?? this.skills2,
      savingThrows: savingThrows ?? this.savingThrows,
      weapons: weapons ?? this.weapons,
      languages: languages ?? this.languages,
      traits: traits ?? this.traits,
      spells: spells ?? this.spells,
      background: background ?? this.background,
      backstory: backstory ?? this.backstory,
      pets: pets ?? this.pets,
      favoredEnemyList: favoredEnemyList ?? this.favoredEnemyList,
      favoredTerrainList: favoredTerrainList ?? this.favoredTerrainList,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (img.present) {
      map['img'] = Variable<String>(img.value);
    }
    if (profileImg.present) {
      map['profile_img'] = Variable<String>(profileImg.value);
    }
    if (banner.present) {
      map['banner'] = Variable<String>(banner.value);
    }
    if (race.present) {
      map['race'] = Variable<String>(race.value);
    }
    if (classes.present) {
      map['classes'] = Variable<String>(classes.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (armor.present) {
      map['armor'] = Variable<int>(armor.value);
    }
    if (initiative.present) {
      map['initiative'] = Variable<int>(initiative.value);
    }
    if (speed.present) {
      map['speed'] = Variable<int>(speed.value);
    }
    if (passivePerception.present) {
      map['passive_perception'] = Variable<int>(passivePerception.value);
    }
    if (hitDice.present) {
      map['hit_dice'] = Variable<String>(hitDice.value);
    }
    if (currentHp.present) {
      map['current_hp'] = Variable<int>(currentHp.value);
    }
    if (maxHp.present) {
      map['max_hp'] = Variable<int>(maxHp.value);
    }
    if (abilities.present) {
      map['abilities'] = Variable<String>(abilities.value);
    }
    if (allSkills.present) {
      map['all_skills'] = Variable<String>(allSkills.value);
    }
    if (skills1.present) {
      map['skills1'] = Variable<String>(skills1.value);
    }
    if (skills2.present) {
      map['skills2'] = Variable<String>(skills2.value);
    }
    if (savingThrows.present) {
      map['saving_throws'] = Variable<String>(savingThrows.value);
    }
    if (weapons.present) {
      map['weapons'] = Variable<String>(weapons.value);
    }
    if (languages.present) {
      map['languages'] = Variable<String>(languages.value);
    }
    if (traits.present) {
      map['traits'] = Variable<String>(traits.value);
    }
    if (spells.present) {
      map['spells'] = Variable<String>(spells.value);
    }
    if (background.present) {
      map['background'] = Variable<String>(background.value);
    }
    if (backstory.present) {
      map['backstory'] = Variable<String>(backstory.value);
    }
    if (pets.present) {
      map['pets'] = Variable<String>(pets.value);
    }
    if (favoredEnemyList.present) {
      map['favored_enemy_list'] = Variable<String>(favoredEnemyList.value);
    }
    if (favoredTerrainList.present) {
      map['favored_terrain_list'] = Variable<String>(favoredTerrainList.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CharactersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lastName: $lastName, ')
          ..write('img: $img, ')
          ..write('profileImg: $profileImg, ')
          ..write('banner: $banner, ')
          ..write('race: $race, ')
          ..write('classes: $classes, ')
          ..write('level: $level, ')
          ..write('armor: $armor, ')
          ..write('initiative: $initiative, ')
          ..write('speed: $speed, ')
          ..write('passivePerception: $passivePerception, ')
          ..write('hitDice: $hitDice, ')
          ..write('currentHp: $currentHp, ')
          ..write('maxHp: $maxHp, ')
          ..write('abilities: $abilities, ')
          ..write('allSkills: $allSkills, ')
          ..write('skills1: $skills1, ')
          ..write('skills2: $skills2, ')
          ..write('savingThrows: $savingThrows, ')
          ..write('weapons: $weapons, ')
          ..write('languages: $languages, ')
          ..write('traits: $traits, ')
          ..write('spells: $spells, ')
          ..write('background: $background, ')
          ..write('backstory: $backstory, ')
          ..write('pets: $pets, ')
          ..write('favoredEnemyList: $favoredEnemyList, ')
          ..write('favoredTerrainList: $favoredTerrainList')
          ..write(')'))
        .toString();
  }
}

class $CharactersTable extends Characters
    with TableInfo<$CharactersTable, Character> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CharactersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String?> lastName = GeneratedColumn<String?>(
      'last_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imgMeta = const VerificationMeta('img');
  @override
  late final GeneratedColumn<String?> img = GeneratedColumn<String?>(
      'img', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _profileImgMeta = const VerificationMeta('profileImg');
  @override
  late final GeneratedColumn<String?> profileImg = GeneratedColumn<String?>(
      'profile_img', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _bannerMeta = const VerificationMeta('banner');
  @override
  late final GeneratedColumn<String?> banner = GeneratedColumn<String?>(
      'banner', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _raceMeta = const VerificationMeta('race');
  @override
  late final GeneratedColumn<String?> race = GeneratedColumn<String?>(
      'race', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _classesMeta = const VerificationMeta('classes');
  @override
  late final GeneratedColumn<String?> classes = GeneratedColumn<String?>(
      'classes', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<int?> level = GeneratedColumn<int?>(
      'level', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _armorMeta = const VerificationMeta('armor');
  @override
  late final GeneratedColumn<int?> armor = GeneratedColumn<int?>(
      'armor', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _initiativeMeta = const VerificationMeta('initiative');
  @override
  late final GeneratedColumn<int?> initiative = GeneratedColumn<int?>(
      'initiative', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _speedMeta = const VerificationMeta('speed');
  @override
  late final GeneratedColumn<int?> speed = GeneratedColumn<int?>(
      'speed', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _passivePerceptionMeta =
      const VerificationMeta('passivePerception');
  @override
  late final GeneratedColumn<int?> passivePerception = GeneratedColumn<int?>(
      'passive_perception', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _hitDiceMeta = const VerificationMeta('hitDice');
  @override
  late final GeneratedColumn<String?> hitDice = GeneratedColumn<String?>(
      'hit_dice', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _currentHpMeta = const VerificationMeta('currentHp');
  @override
  late final GeneratedColumn<int?> currentHp = GeneratedColumn<int?>(
      'current_hp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _maxHpMeta = const VerificationMeta('maxHp');
  @override
  late final GeneratedColumn<int?> maxHp = GeneratedColumn<int?>(
      'max_hp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _abilitiesMeta = const VerificationMeta('abilities');
  @override
  late final GeneratedColumn<String?> abilities = GeneratedColumn<String?>(
      'abilities', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _allSkillsMeta = const VerificationMeta('allSkills');
  @override
  late final GeneratedColumn<String?> allSkills = GeneratedColumn<String?>(
      'all_skills', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _skills1Meta = const VerificationMeta('skills1');
  @override
  late final GeneratedColumn<String?> skills1 = GeneratedColumn<String?>(
      'skills1', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _skills2Meta = const VerificationMeta('skills2');
  @override
  late final GeneratedColumn<String?> skills2 = GeneratedColumn<String?>(
      'skills2', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _savingThrowsMeta =
      const VerificationMeta('savingThrows');
  @override
  late final GeneratedColumn<String?> savingThrows = GeneratedColumn<String?>(
      'saving_throws', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _weaponsMeta = const VerificationMeta('weapons');
  @override
  late final GeneratedColumn<String?> weapons = GeneratedColumn<String?>(
      'weapons', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _languagesMeta = const VerificationMeta('languages');
  @override
  late final GeneratedColumn<String?> languages = GeneratedColumn<String?>(
      'languages', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _traitsMeta = const VerificationMeta('traits');
  @override
  late final GeneratedColumn<String?> traits = GeneratedColumn<String?>(
      'traits', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _spellsMeta = const VerificationMeta('spells');
  @override
  late final GeneratedColumn<String?> spells = GeneratedColumn<String?>(
      'spells', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _backgroundMeta = const VerificationMeta('background');
  @override
  late final GeneratedColumn<String?> background = GeneratedColumn<String?>(
      'background', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _backstoryMeta = const VerificationMeta('backstory');
  @override
  late final GeneratedColumn<String?> backstory = GeneratedColumn<String?>(
      'backstory', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _petsMeta = const VerificationMeta('pets');
  @override
  late final GeneratedColumn<String?> pets = GeneratedColumn<String?>(
      'pets', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _favoredEnemyListMeta =
      const VerificationMeta('favoredEnemyList');
  @override
  late final GeneratedColumn<String?> favoredEnemyList =
      GeneratedColumn<String?>('favored_enemy_list', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _favoredTerrainListMeta =
      const VerificationMeta('favoredTerrainList');
  @override
  late final GeneratedColumn<String?> favoredTerrainList =
      GeneratedColumn<String?>('favored_terrain_list', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        lastName,
        img,
        profileImg,
        banner,
        race,
        classes,
        level,
        armor,
        initiative,
        speed,
        passivePerception,
        hitDice,
        currentHp,
        maxHp,
        abilities,
        allSkills,
        skills1,
        skills2,
        savingThrows,
        weapons,
        languages,
        traits,
        spells,
        background,
        backstory,
        pets,
        favoredEnemyList,
        favoredTerrainList
      ];
  @override
  String get aliasedName => _alias ?? 'characters';
  @override
  String get actualTableName => 'characters';
  @override
  VerificationContext validateIntegrity(Insertable<Character> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('img')) {
      context.handle(
          _imgMeta, img.isAcceptableOrUnknown(data['img']!, _imgMeta));
    } else if (isInserting) {
      context.missing(_imgMeta);
    }
    if (data.containsKey('profile_img')) {
      context.handle(
          _profileImgMeta,
          profileImg.isAcceptableOrUnknown(
              data['profile_img']!, _profileImgMeta));
    } else if (isInserting) {
      context.missing(_profileImgMeta);
    }
    if (data.containsKey('banner')) {
      context.handle(_bannerMeta,
          banner.isAcceptableOrUnknown(data['banner']!, _bannerMeta));
    } else if (isInserting) {
      context.missing(_bannerMeta);
    }
    if (data.containsKey('race')) {
      context.handle(
          _raceMeta, race.isAcceptableOrUnknown(data['race']!, _raceMeta));
    } else if (isInserting) {
      context.missing(_raceMeta);
    }
    if (data.containsKey('classes')) {
      context.handle(_classesMeta,
          classes.isAcceptableOrUnknown(data['classes']!, _classesMeta));
    } else if (isInserting) {
      context.missing(_classesMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('armor')) {
      context.handle(
          _armorMeta, armor.isAcceptableOrUnknown(data['armor']!, _armorMeta));
    } else if (isInserting) {
      context.missing(_armorMeta);
    }
    if (data.containsKey('initiative')) {
      context.handle(
          _initiativeMeta,
          initiative.isAcceptableOrUnknown(
              data['initiative']!, _initiativeMeta));
    } else if (isInserting) {
      context.missing(_initiativeMeta);
    }
    if (data.containsKey('speed')) {
      context.handle(
          _speedMeta, speed.isAcceptableOrUnknown(data['speed']!, _speedMeta));
    } else if (isInserting) {
      context.missing(_speedMeta);
    }
    if (data.containsKey('passive_perception')) {
      context.handle(
          _passivePerceptionMeta,
          passivePerception.isAcceptableOrUnknown(
              data['passive_perception']!, _passivePerceptionMeta));
    } else if (isInserting) {
      context.missing(_passivePerceptionMeta);
    }
    if (data.containsKey('hit_dice')) {
      context.handle(_hitDiceMeta,
          hitDice.isAcceptableOrUnknown(data['hit_dice']!, _hitDiceMeta));
    } else if (isInserting) {
      context.missing(_hitDiceMeta);
    }
    if (data.containsKey('current_hp')) {
      context.handle(_currentHpMeta,
          currentHp.isAcceptableOrUnknown(data['current_hp']!, _currentHpMeta));
    } else if (isInserting) {
      context.missing(_currentHpMeta);
    }
    if (data.containsKey('max_hp')) {
      context.handle(
          _maxHpMeta, maxHp.isAcceptableOrUnknown(data['max_hp']!, _maxHpMeta));
    } else if (isInserting) {
      context.missing(_maxHpMeta);
    }
    if (data.containsKey('abilities')) {
      context.handle(_abilitiesMeta,
          abilities.isAcceptableOrUnknown(data['abilities']!, _abilitiesMeta));
    } else if (isInserting) {
      context.missing(_abilitiesMeta);
    }
    if (data.containsKey('all_skills')) {
      context.handle(_allSkillsMeta,
          allSkills.isAcceptableOrUnknown(data['all_skills']!, _allSkillsMeta));
    } else if (isInserting) {
      context.missing(_allSkillsMeta);
    }
    if (data.containsKey('skills1')) {
      context.handle(_skills1Meta,
          skills1.isAcceptableOrUnknown(data['skills1']!, _skills1Meta));
    } else if (isInserting) {
      context.missing(_skills1Meta);
    }
    if (data.containsKey('skills2')) {
      context.handle(_skills2Meta,
          skills2.isAcceptableOrUnknown(data['skills2']!, _skills2Meta));
    } else if (isInserting) {
      context.missing(_skills2Meta);
    }
    if (data.containsKey('saving_throws')) {
      context.handle(
          _savingThrowsMeta,
          savingThrows.isAcceptableOrUnknown(
              data['saving_throws']!, _savingThrowsMeta));
    } else if (isInserting) {
      context.missing(_savingThrowsMeta);
    }
    if (data.containsKey('weapons')) {
      context.handle(_weaponsMeta,
          weapons.isAcceptableOrUnknown(data['weapons']!, _weaponsMeta));
    } else if (isInserting) {
      context.missing(_weaponsMeta);
    }
    if (data.containsKey('languages')) {
      context.handle(_languagesMeta,
          languages.isAcceptableOrUnknown(data['languages']!, _languagesMeta));
    } else if (isInserting) {
      context.missing(_languagesMeta);
    }
    if (data.containsKey('traits')) {
      context.handle(_traitsMeta,
          traits.isAcceptableOrUnknown(data['traits']!, _traitsMeta));
    } else if (isInserting) {
      context.missing(_traitsMeta);
    }
    if (data.containsKey('spells')) {
      context.handle(_spellsMeta,
          spells.isAcceptableOrUnknown(data['spells']!, _spellsMeta));
    } else if (isInserting) {
      context.missing(_spellsMeta);
    }
    if (data.containsKey('background')) {
      context.handle(
          _backgroundMeta,
          background.isAcceptableOrUnknown(
              data['background']!, _backgroundMeta));
    } else if (isInserting) {
      context.missing(_backgroundMeta);
    }
    if (data.containsKey('backstory')) {
      context.handle(_backstoryMeta,
          backstory.isAcceptableOrUnknown(data['backstory']!, _backstoryMeta));
    } else if (isInserting) {
      context.missing(_backstoryMeta);
    }
    if (data.containsKey('pets')) {
      context.handle(
          _petsMeta, pets.isAcceptableOrUnknown(data['pets']!, _petsMeta));
    } else if (isInserting) {
      context.missing(_petsMeta);
    }
    if (data.containsKey('favored_enemy_list')) {
      context.handle(
          _favoredEnemyListMeta,
          favoredEnemyList.isAcceptableOrUnknown(
              data['favored_enemy_list']!, _favoredEnemyListMeta));
    } else if (isInserting) {
      context.missing(_favoredEnemyListMeta);
    }
    if (data.containsKey('favored_terrain_list')) {
      context.handle(
          _favoredTerrainListMeta,
          favoredTerrainList.isAcceptableOrUnknown(
              data['favored_terrain_list']!, _favoredTerrainListMeta));
    } else if (isInserting) {
      context.missing(_favoredTerrainListMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Character map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Character.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CharactersTable createAlias(String alias) {
    return $CharactersTable(attachedDatabase, alias);
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $CharactersTable characters = $CharactersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [characters];
}
