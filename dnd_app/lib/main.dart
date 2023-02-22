import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/character_select.dart';

Future<void> main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
