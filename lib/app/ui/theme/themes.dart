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
      iconColor: Colors.blue,
      prefixIconColor: Colors.blue,
      suffixIconColor: Colors.blue,
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
        color: Colors.black87,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      headline2: GoogleFonts.roboto(
        color: Colors.black87,
        fontSize: 24,
        fontWeight: FontWeight.w800,
      ),
      headline3: GoogleFonts.roboto(
        color: Colors.black87,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),
      headline4: GoogleFonts.roboto(
        color: Colors.black87,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      headline5: GoogleFonts.roboto(
        color: Colors.black87,
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
      headline6: GoogleFonts.roboto(
        color: Colors.black87,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      subtitle1: GoogleFonts.roboto(
        color: Colors.black87,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      subtitle2: GoogleFonts.roboto(
        color: Colors.black87,
        fontSize: 12,
        fontWeight: FontWeight.normal,
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
