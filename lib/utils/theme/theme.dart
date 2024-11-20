import 'package:flutter/material.dart';

import 'custom_themes/app_bar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtontTheme,
    appBarTheme: AppbarTheme.lightAppBarTheme,
    bottomSheetTheme: BottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: CheckBoxTheme.lightCheckboxTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtontTheme,
    inputDecorationTheme: TextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: AppbarTheme.darkAppBarTheme,
    bottomSheetTheme: BottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: CheckBoxTheme.darkCheckboxTheme,
    inputDecorationTheme: TextFieldTheme.darkInputDecorationTheme,
  );
}