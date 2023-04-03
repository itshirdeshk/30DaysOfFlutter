import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.brown,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData get darkTheme => ThemeData(brightness: Brightness.dark);

  // Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color brownishColor = const Color.fromARGB(255, 172, 97, 97);
}
