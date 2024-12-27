import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_colors.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_measure.dart';

const double kSizeFixedXXS = 2.0;
const double kSizeFixedXS = 4.0;
const double kSizeFixedSM = 8.0;
const double kSizeFixedMD = 16.0;
const double kSizeFixedLG = 24.0;
const double kSizeFixedXL = 32.0;
const double kSizeFixedXXL = 40.0;
const double kSizeFixedLargerMinimal = 56.0;
const double kSizeFixedLargerMedium = 64.0;
const double kSizeFixedLargerMaximal = 92.0;

const double kSizePercentXXS = 0.02;
const double kSizePercentXS = 0.04;
const double kSizePercentSM = 0.08;
const double kSizePercentMD = 0.16;
const double kSizePercentLG = 0.24;
const double kSizePercentXL = 0.32;
const double kSizePercentXXL = 0.40;

double kSizeResponsiveXXS = ProMeasure.getProportionateScreenHeight(kSizeFixedXXS);
double kSizeResponsiveXS = ProMeasure.getProportionateScreenHeight(kSizeFixedXS);
double kSizeResponsiveSM = ProMeasure.getProportionateScreenHeight(kSizeFixedSM);
double kSizeResponsiveMD = ProMeasure.getProportionateScreenHeight(kSizeFixedMD);
double kSizeResponsiveLG = ProMeasure.getProportionateScreenHeight(kSizeFixedLG);
double kSizeResponsiveXL = ProMeasure.getProportionateScreenHeight(kSizeFixedXL);
double kSizeResponsiveXXL = ProMeasure.getProportionateScreenHeight(kSizeFixedXXL);

const kColorSchemePrimary = Color(0xFF006cb8);
const kColorSchemePrimaryLight = Color(0xFFA4C4E5);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);

const Color kColorTransparent = ProColors.transparent;
const Color kColorLightBackgroundPrimary = ProColors.greyBlue1;
const Color kColorLightBackgroundWhite = ProColors.whiteSolid;

const Color kColorLightTextPrimary = ProColors.neutralLightBlue5;
const Color kColorLightTextSecondary = ProColors.neutralLightBlue3;
const Color kColorLightTextError = ProColors.redDark2;
const Color kColorLightTextWhite = ProColors.whiteSolid;
const Color kColorLightTextBlack = ProColors.blackSolid;

const Color kColorLightIcon = ProColors.neutralDarkBlue5;

const Color kColorLightFormFilled = kColorLightBackgroundPrimary;
const Color kColorLightCardBackground = kColorLightBackgroundWhite;

const Color kColorDarkTextPrimary = ProColors.neutralLightBlue1;
