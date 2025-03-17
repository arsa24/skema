import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant.dart';

class AppThemes {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Constant.primaryDark,
    textTheme: GoogleFonts.interTextTheme().apply(
      bodyColor: Constant.whiteColor,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.interTextTheme().apply(
      bodyColor: Constant.blackColor,
    ),
  );
}
