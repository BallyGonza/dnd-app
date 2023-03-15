import 'package:dnd_app/theme.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  Hive
    ..registerAdapter(NoteAdapter())
    ..registerAdapter(HealthPointsAdapter())
    ..registerAdapter(DiceAdapter())
    ..registerAdapter(AnimalAdapter())
    ..registerAdapter(AbilityAdapter())
    ..registerAdapter(SavingThrowAdapter())
    ..registerAdapter(WeaponAdapter())
    ..registerAdapter(TraitAdapter())
    ..registerAdapter(SkillAdapter())
    ..registerAdapter(CharacterAdapter())
    ..registerAdapter(BackgroundAdapter())
    ..registerAdapter(SpellAdapter())
    ..registerAdapter(WalletAdapter());

  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  await Hive.initFlutter();
  await Hive.openBox<Character>('characters_box');

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const CharacterSelectScreen(),
    );
  }
}
