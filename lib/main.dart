import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

final colorscheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 102, 6, 247),
    surface: const Color.fromARGB(255, 56, 49, 66));

final theme = ThemeData().copyWith(
    scaffoldBackgroundColor: colorscheme.surface,
    colorScheme: colorscheme,
    textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
        titleSmall: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
        titleMedium: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
        titleLarge: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold)));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const Text("welcome to app...."),
    );
  }
}
