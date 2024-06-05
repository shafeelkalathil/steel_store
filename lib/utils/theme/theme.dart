import 'package:flutter/material.dart';
import 'package:steel_store/utils/theme/custom_theme/appbar_theme.dart';
import 'package:steel_store/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:steel_store/utils/theme/custom_theme/checkkbox_theme.dart';
import 'package:steel_store/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:steel_store/utils/theme/custom_theme/text_form_field_theme.dart';
import 'package:steel_store/utils/theme/custom_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: TTextFromFieldTheme.lightInputDecoration,
  );

  static ThemeData darkTheme = ThemeData(
      primaryColor: Colors.blue,
      useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: TTextFromFieldTheme.darkInputDecoration,
  );
}