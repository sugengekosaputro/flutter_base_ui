import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/core/themes/properties/appbar.dart';
import 'package:flutter_ecommerce_tokoto/core/themes/properties/input.dart';
import 'package:flutter_ecommerce_tokoto/core/themes/properties/text.dart';

class ProTheme {
  static ThemeData defaultTheme(BuildContext context) {
    return ThemeData(
      fontFamily: 'Poppins',
      useMaterial3: true,
      scaffoldBackgroundColor: kColorLightBackgroundPrimary,
      colorScheme: const ColorScheme.light(
        primary: kColorSchemePrimary,
        secondary: kColorSchemePrimaryLight,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      appBarTheme: appBarTheme(context),
      textTheme: lightTextTheme(),
      inputDecorationTheme: inputDecorationTheme(context),
    );
  }
}
