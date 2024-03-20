import 'package:dnd_app/data/data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  static Future<void> initializeHive() async {
    try {
      Hive
        ..registerAdapter(NoteAdapter())
        ..registerAdapter(HealthPointsModelAdapter())
        ..registerAdapter(DiceModelAdapter())
        ..registerAdapter(AnimalModelAdapter())
        ..registerAdapter(AbilityModelAdapter())
        ..registerAdapter(SavingThrowModelAdapter())
        ..registerAdapter(WeaponModelAdapter())
        ..registerAdapter(TraitModelAdapter())
        ..registerAdapter(SkillModelAdapter())
        ..registerAdapter(CharacterModelAdapter())
        ..registerAdapter(BackgroundModelAdapter())
        ..registerAdapter(SpellModelAdapter())
        ..registerAdapter(WalletModelAdapter());

      WidgetsFlutterBinding.ensureInitialized();

      await Hive.initFlutter();
      await Hive.openBox<CharacterModel>('characters_box');
    } catch (e) {
      if (kDebugMode) {
        print('Failed to initialize Hive: $e');
      }
    }
  }
}
