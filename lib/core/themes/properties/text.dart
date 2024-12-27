import 'package:flutter/material.dart';

import '../../../shared/constants.dart';
import '../../pro_measure.dart';

TextTheme lightTextTheme() => TextTheme(
      displayLarge: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(57.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      displayMedium: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(45.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      displaySmall: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(36.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      headlineLarge: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(32.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      headlineMedium: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(28.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      headlineSmall: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(24.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      titleLarge: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(22.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorLightTextPrimary,
      ),
      titleMedium: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(16.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorLightTextPrimary,
      ),
      titleSmall: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(14.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorLightTextPrimary,
      ),
      bodyLarge: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(16.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      bodyMedium: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(14.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary,
      ),
      bodySmall: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(12.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorLightTextPrimary.withOpacity(0.5),
      ),
      labelLarge: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(14.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorLightTextPrimary,
      ),
      labelMedium: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(12.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorLightTextPrimary,
      ),
      labelSmall: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(11.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorLightTextPrimary.withOpacity(0.5),
      ),
    );

TextTheme darkTextTheme() => TextTheme(
      displayLarge: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(57.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      displayMedium: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(45.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      displaySmall: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(36.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      headlineLarge: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(32.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      headlineMedium: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(28.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      headlineSmall: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(24.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      titleLarge: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(22.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorDarkTextPrimary,
      ),
      titleMedium: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(16.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorDarkTextPrimary,
      ),
      titleSmall: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(14.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorDarkTextPrimary,
      ),
      bodyLarge: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(16.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      bodyMedium: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(14.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary,
      ),
      bodySmall: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(12.0),
        fontWeight: FontWeight.w400, // Regular
        color: kColorDarkTextPrimary.withOpacity(0.5),
      ),
      labelLarge: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(14.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorDarkTextPrimary,
      ),
      labelMedium: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(12.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorDarkTextPrimary,
      ),
      labelSmall: TextStyle(
        fontSize: ProMeasure.getProportionateFontSize(11.0),
        fontWeight: FontWeight.w500, // Medium
        color: kColorDarkTextPrimary.withOpacity(0.5),
      ),
    );
