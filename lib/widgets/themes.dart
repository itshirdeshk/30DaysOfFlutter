import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyThemes {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.brown,
      fontFamily: GoogleFonts.poppins().fontFamily,
      canvasColor: creamColor,
      cardColor: Colors.white,
      accentColor: brownishColor,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData get darkTheme => ThemeData(
      primarySwatch: Colors.brown,
      fontFamily: GoogleFonts.poppins().fontFamily,
      canvasColor: darkcreamColor,
      cardColor: Colors.black,
      accentColor: Colors.white,
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ));

  // Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray900;
  static Color lightbrownishColor = const Color.fromARGB(255, 196, 147, 129);
  static Color brownishColor = Color.fromARGB(255, 104, 55, 55);
}
