import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get hogwartsTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF0D1B2A),

      primaryColor: const Color(0xFF415A77),

      cardColor: const Color(0xFF1B263B),

      textTheme: GoogleFonts.loraTextTheme().apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF243447),
        hintStyle: const TextStyle(color: Color(0xFFA9B4C2)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF0D1B2A),
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.lora(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: const Color.fromRGBO(27, 38, 59, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFFA9B4C2),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
