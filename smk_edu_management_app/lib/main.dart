import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_edu_management_app/constant/constant.dart';
import 'package:smk_edu_management_app/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skema',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      darkTheme: ThemeData(
        // inputDecorationTheme: InputDecorationTheme(
        //   fillColor: Constant().secondary,
        //   filled: true,
        //   focusColor: Constant().grayColor,
        //   hoverColor: Constant().grayColor,
        // ),
        textTheme: GoogleFonts.interTextTheme(),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Constant().primary,
        appBarTheme: AppBarTheme(color: Constant().primary),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Constant().primary
        )
      ),
      home: OnboardingScreen(),
    );
  }
}
