import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:three_column_preview_card_component/screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: _buildTheme(Brightness.dark),
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: MainScreen(),
      ),
    ),
  );
}

ThemeData _buildTheme(Brightness brightness) {
  var baseTheme = ThemeData(brightness: brightness);
  return baseTheme.copyWith(
      textTheme: GoogleFonts.lexendDecaTextTheme(baseTheme.textTheme));
}
