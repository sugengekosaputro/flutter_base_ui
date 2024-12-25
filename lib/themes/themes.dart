import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/themes/input.dart';
import 'package:flutter_ecommerce_tokoto/themes/text.dart';

ThemeData theme(BuildContext context) => ThemeData(
      fontFamily: 'Poppins',
      useMaterial3: true,
      scaffoldBackgroundColor: kColorLightBackground,
      colorScheme: const ColorScheme.light(primary: kColorPrimary, secondary: kColorPrimaryLight),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      textTheme: lightTextTheme(),
      inputDecorationTheme: inputDecorationTheme(context),
    );
