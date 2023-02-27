import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  Hive.registerAdapter(NoteAdapter());
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  await Hive.initFlutter();
  await Hive.openBox<Note>('notes_box');
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
