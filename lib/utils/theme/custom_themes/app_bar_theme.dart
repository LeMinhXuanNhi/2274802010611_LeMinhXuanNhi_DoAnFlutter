import 'package:flutter/material.dart';

class AppbarTheme {
  AppbarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(size: 24.0, color: Colors.black),
    actionsIconTheme: IconThemeData(size: 24.0, color: Colors.black),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600,
        color: Colors.black),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(size: 24.0, color: Colors.black),
    actionsIconTheme: IconThemeData(size: 24.0, color: Colors.white),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600,
        color: Colors.white),
  );
}