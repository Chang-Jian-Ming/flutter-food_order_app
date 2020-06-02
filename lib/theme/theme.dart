import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: Colors.red,
    accentColor: Color(0xFF001580),
    primarySwatch: Colors.red,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      headline4: TextStyle(
        fontSize: 25,
      ), 
      headline5: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ), 
      headline6: TextStyle(
        fontSize: 12,
        color: Colors.white,
      ), 
    ),
  );
}