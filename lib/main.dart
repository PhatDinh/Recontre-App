import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recontre/screens/login_screen.dart';
import 'package:recontre/screens/root_screen.dart';

const primaryBG = Color.fromRGBO(254, 247, 236, 0.0);
const textColor = Colors.black;

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(253, 246, 235, 1),
        appBarTheme: AppBarTheme(
            foregroundColor: textColor,
            centerTitle: true,
            titleTextStyle: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black))),
      )));
}
