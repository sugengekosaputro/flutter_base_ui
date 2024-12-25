import 'package:flutter/material.dart';

import '../shared/constants.dart';
import '../shared/size_config.dart';

TextTheme lightTextTheme() => TextTheme(
      displayLarge: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(57.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      displayMedium: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(45.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      displaySmall: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(36.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      headlineLarge: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(32.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      headlineMedium: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(28.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      headlineSmall: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(24.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      titleLarge: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(22.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorLightTextPrimary,
      ),
      titleMedium: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(16.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorLightTextPrimary,
      ),
      titleSmall: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(14.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorLightTextPrimary,
      ),
      bodyLarge: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(16.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      bodyMedium: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(14.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      bodySmall: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(12.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary.withOpacity(0.5),
      ),
      labelLarge: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(14.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorLightTextPrimary,
      ),
      labelMedium: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(12.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorLightTextPrimary,
      ),
      labelSmall: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(11.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorLightTextPrimary.withOpacity(0.5),
      ),
    );

TextTheme darkTextTheme() => TextTheme(
      displayLarge: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(57.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      displayMedium: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(45.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      displaySmall: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(36.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      headlineLarge: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(32.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      headlineMedium: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(28.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      headlineSmall: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(24.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      titleLarge: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(22.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorDarkTextPrimary,
      ),
      titleMedium: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(16.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorDarkTextPrimary,
      ),
      titleSmall: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(14.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorDarkTextPrimary,
      ),
      bodyLarge: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(16.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      bodyMedium: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(14.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      bodySmall: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(12.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary.withOpacity(0.5),
      ),
      labelLarge: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(14.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorDarkTextPrimary,
      ),
      labelMedium: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(12.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorDarkTextPrimary,
      ),
      labelSmall: TextStyle(
        fontSize: SizeConfig.getProportionateFontSize(11.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorDarkTextPrimary.withOpacity(0.5),
      ),
    );
