import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiclingo/screens/login.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 103, 58, 183),
    brightness: Brightness.dark,
  ),
  textTheme: GoogleFonts.nunitoTextTheme(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const LoginScreen(),
    );
  }
}
