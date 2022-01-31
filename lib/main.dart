import 'package:flutter/material.dart';
import 'package:flutter_news_api/navigation/navigation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.dmSansTextTheme().toString()),
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}

