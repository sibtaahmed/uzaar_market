import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uzaar_market/Screens/card.dart';
import 'package:uzaar_market/Screens/home.dart';
import 'package:uzaar_market/Screens/product_details_screen.dart';
import 'package:uzaar_market/firebase_options.dart';
import 'package:uzaar_market/navBar.dart';
import 'package:uzaar_market/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

SharedPreferences? prefs;
String? userID;
String? userName;
String? userEmail;
String? userPhone;
String? userImage;


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  one() async {
    prefs = await SharedPreferences.getInstance();
    userID = prefs!.getString('userID');
    userName = prefs!.getString('userName');
    userEmail = prefs!.getString('userEmail');
    userPhone = prefs!.getString('userPhone');
    userImage = prefs!.getString('userImage');
    print('userID: $userID');
    print('userName: $userName');
    print('userEmail: $userEmail');
    print('userPhone: $userPhone');
    print('userImage: $userImage');
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    one();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uzaar Market',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.outfitTextTheme(
          // Applying Google Fonts Outfit
          Theme.of(context).textTheme, // Applying to existing theme
        ),
      ),
      home: userID != null ? const Navbar() : const Splash(),
    );
  }
}
