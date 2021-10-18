import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qrcan/responsive.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    enabledBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffE2E0D8))),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffCD972F))),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: Color(0xFF757575)),
    bodyText2: TextStyle(color: Color(0xFF757575)),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}
