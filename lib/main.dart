import 'package:flutter/material.dart';
import 'package:gastinhos/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Continhas',
      theme: ThemeData(
        textTheme: GoogleFonts.dosisTextTheme(
          Theme.of(context).textTheme,
        ),
        fontFamily: GoogleFonts.dosis().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
