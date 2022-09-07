import 'package:dnd_app/logic/bloc/health_points_bloc/health_points_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/character_select.dart';

Future<void> main() async {
  runApp( BlocProvider(
    create: (context) => HealthPointsBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.robotoCondensedTextTheme(),
        primaryColor: Colors.black,
        listTileTheme: const ListTileThemeData(
          selectedColor: Colors.black,
          selectedTileColor: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const CharacterSelectScreen(),
    );
  }
}
