import 'package:flutter/material.dart';
import 'package:recontre/screens/root_screen.dart';

const primaryBG = Color.fromRGBO(253, 246, 235, 1);
const textColor = Colors.black;

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootScreen(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(foregroundColor: textColor),
          colorScheme: ColorScheme.light(
            primary: primaryBG,
          ))));
}
