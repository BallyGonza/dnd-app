import 'package:dnd_app/bloc/bloc.dart';
import 'package:dnd_app/services/services.dart';
import 'package:dnd_app/theme.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await HiveService.initializeHive();
  await SystemChromeService.setSystemChrome();

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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const LandingScreen(),
    );
  }
}
