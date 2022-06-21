import 'package:drift/drift.dart';

class Characters extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().named('name')();
  TextColumn get lastName => text().named('last_name')();
  TextColumn get img => text().named('img')();
  TextColumn get profileImg => text().named('profile_img')();
  TextColumn get banner => text().named('banner')();
  TextColumn get race => text().named('race')();
  TextColumn get classes => text().named('classes')();
  IntColumn get level => integer().named('level')();
  IntColumn get armor => integer().named('armor')();
  IntColumn get initiative => integer().named('initiative')();
  IntColumn get speed => integer().named('speed')();
  IntColumn get passivePerception => integer().named('passive_perception')();
  TextColumn get hitDice => text().named('hit_dice')();
  IntColumn get currentHp => integer().named('current_hp')();
  IntColumn get maxHp => integer().named('max_hp')();
  TextColumn get abilities => text().named('abilities')();
  TextColumn get allSkills => text().named('all_skills')();
  TextColumn get skills1 => text().named('skills1')();
  TextColumn get skills2 => text().named('skills2')();
  TextColumn get savingThrows => text().named('saving_throws')();
  TextColumn get weapons => text().named('weapons')();
  TextColumn get languages => text().named('languages')();
  TextColumn get traits => text().named('traits')();
  TextColumn get spells => text().named('spells')();
  TextColumn get background => text().named('background')();
  TextColumn get backstory => text().named('backstory')();
  TextColumn get pets => text().named('pets')();
  TextColumn get favoredEnemyList => text().named('favored_enemy_list')();
  TextColumn get favoredTerrainList => text().named('favored_terrain_list')();
  
}