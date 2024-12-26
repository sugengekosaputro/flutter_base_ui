import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/themes/appbar.dart';
import 'package:flutter_ecommerce_tokoto/themes/input.dart';
import 'package:flutter_ecommerce_tokoto/themes/text.dart';

ThemeData theme(BuildContext context) => ThemeData(
      fontFamily: 'Poppins',
      useMaterial3: true,
      scaffoldBackgroundColor: kColorLightBackground,
      colorScheme: const ColorScheme.light(primary: kColorPrimary, secondary: kColorPrimaryLight),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      appBarTheme: appBarTheme(context),
      textTheme: lightTextTheme(),
      inputDecorationTheme: inputDecorationTheme(context),
    );

SystemUiOverlayStyle systemUiOverlayStyle() => const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Make the status bar transparent
      statusBarIconBrightness: Brightness.dark, // Dark icons on a light background
      statusBarBrightness: Brightness.light, // Required for iOS
      systemNavigationBarColor: Colors.white, // Navigation bar color
      systemNavigationBarIconBrightness: Brightness.dark, // Dark icons for navigation bar
    );
