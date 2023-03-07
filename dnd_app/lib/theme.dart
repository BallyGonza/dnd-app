import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme = ThemeData(
  primaryColor: Colors.black,
  primaryTextTheme: GoogleFonts.robotoCondensedTextTheme(),
  textTheme: TextTheme(
    headline1: const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline3: const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyText1: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.grey[800],
    ),
    subtitle1: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    subtitle2: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
);
