import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/models.dart';
import 'i_local_storage_service.dart';

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
  get<T>({
    required String key,
    Boxes? box,
    required T Function(Map<String, dynamic> json) fromJson,
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
