import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    cardColor: Colors.white,
    scaffoldBackgroundColor: Colors.grey[200],
    shadowColor: Colors.grey,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Get.theme.primaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Get.theme.primaryColor, width: 2.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: const BorderSide(color: Colors.red, width: 2.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: const BorderSide(color: Colors.red, width: 2.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
    textTheme: TextTheme(
      headline1: GoogleFonts.roboto(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      headline2: GoogleFonts.roboto(
        color: Colors.white,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      headline3: GoogleFonts.roboto(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headline4: GoogleFonts.roboto(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      headline5: GoogleFonts.roboto(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headline6: GoogleFonts.roboto(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      subtitle1: GoogleFonts.roboto(
        color: Colors.black54,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      subtitle2: GoogleFonts.roboto(
        color: Colors.black54,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.grey[900],
    cardColor: Colors.grey[900],
    scaffoldBackgroundColor: Colors.grey[800],
    shadowColor: Colors.grey,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey[300]),
  );
}
