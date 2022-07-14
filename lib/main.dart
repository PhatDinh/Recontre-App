import 'package:flutter/material.dart';
import 'package:recontre/screens/login_screen.dart';
import 'package:recontre/screens/root_screen.dart';

const primaryBG = Color.fromRGBO(254, 247, 236, 1);
const textColor = Colors.black;

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            foregroundColor: textColor,
            centerTitle: true,
            titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black)),
      )));
}
