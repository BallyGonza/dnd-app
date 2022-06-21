import 'dart:io';

import 'package:dnd_app/db/entity/character_entity.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'app_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'characters.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Characters])
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<Character>> getCharacters() async {
    return await select(characters).get();
  }

  Future<Character> getCharacter(int id) async {
    return await (select(characters)..where((t) => t.id.equals(id)))
        .getSingle();
  }

  //update
  Future<bool> updateCharacter(CharactersCompanion entity) async {
    return await update(characters).replace(entity);
  }

  //insert
  Future<int> insertCharacter(CharactersCompanion entity) async {
    return await into(characters).insert(entity);
  }

  //delete
  Future<int> deleteCharacter(int id) async {
    return await (delete(characters)..where((t) => t.id.equals(id))).go();
  }
}
