import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_application_2/utils/theme/custom_themes/text_theme.dart';

class MMAppTheme {
  MMAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Color.fromARGB(255, 70, 57, 253),
    textTheme: MMextTheme.lightTextTheme,
    chipTheme: MMChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: MMAppBarTheme.lightAppBarTheme,
    checkboxTheme: MMCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: MMBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MMElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MMOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MMextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: MMextTheme.darkTextTheme,
    chipTheme: MMChipTheme.darkChipTheme,
    scaffoldBackgroundColor: MMColors.black,
    appBarTheme: MMAppBarTheme.darkAppBarTheme,
    checkboxTheme: MMCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: MMBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MMElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MMOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MMextFormFieldTheme.darkInputDecorationTheme,
  );
}
