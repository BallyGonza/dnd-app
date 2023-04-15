import 'package:dnd_app/blocs/blocs.dart';
import 'package:dnd_app/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  await Hive.initFlutter();
  await Hive.openBox<Character>('characters_box');

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CharacterBloc(),
        ),
        BlocProvider(
          create: (context) => CharacterHealthPointsBloc(
            CharacterRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => LootBloc(
            CharacterRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => PetHealthPointsBloc(
            CharacterRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => WalletBloc(
            CharacterRepository(),
          ),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const LandingScreen(),
    );
  }
}
