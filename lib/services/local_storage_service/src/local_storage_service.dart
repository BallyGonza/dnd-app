import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dnd_app/services/local_storage_service/models/models.dart';
import 'package:dnd_app/services/local_storage_service/src/i_local_storage_service.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageService implements ILocalStorageService {
  LocalStorageService([HiveInterface? hiveInterface]) {
    hive = hiveInterface ?? Hive;
  }

  late HiveInterface hive;

  Future<void> setUpHive() async {
    await hive.initFlutter();
    await hive.openBox<String>(BoxKeys.appBox);
  }

  @override
  Future<void> delete({
    required String key,
    Boxes? box,
  }) async {
    await hive.box<String>(box?.name ?? BoxKeys.appBox).delete(key);
  }

  @override
  Right<dynamic, T> get<T>({
    required String key,
    required T Function(Map<String, dynamic> json) fromJson,
    Boxes? box,
  }) {
    String value;
    value = hive.box<String>(box?.name ?? BoxKeys.appBox).get(key)!;
    final json = jsonDecode(value) as Map<String, dynamic>;
    return Right(fromJson(json));
  }

  @override
  Future<void> save({
    required String key,
    required Map<String, dynamic> value,
    Boxes? box,
  }) async {
    final encoded = jsonEncode(value);
    await hive.box<String>(box?.name ?? BoxKeys.appBox).put(key, encoded);
  }
}
