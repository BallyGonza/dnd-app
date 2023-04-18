import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/bloc/bloc.dart';
import 'package:dnd_app/theme.dart';

Future<void> main() async {
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

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CharacterBloc(),
        ),
        BlocProvider(
          create: (context) => CharacterHPBloc(),
        ),
        BlocProvider(
          create: (context) => LootBloc(),
        ),
        BlocProvider(
          create: (context) => PetHPBloc(),
        ),
        BlocProvider(
          create: (context) => WalletBloc(),
        ),
        BlocProvider(
          create: (context) => WildFormHPBloc(),
        ),
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
