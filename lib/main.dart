import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uzaar_market/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.outfitTextTheme(
          // Applying Google Fonts Outfit
          Theme.of(context).textTheme, // Applying to existing theme
        ),
      ),
      home: const Splash(),
    );
  }
}
