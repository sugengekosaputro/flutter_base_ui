import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/app_colors.dart';
import 'package:flutter_ecommerce_tokoto/shared/size_config.dart';

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

double kSizeResponsiveXXS = SizeConfig.getProportionateScreenHeight(kSizeFixedXXS);
double kSizeResponsiveXS = SizeConfig.getProportionateScreenHeight(kSizeFixedXS);
double kSizeResponsiveSM = SizeConfig.getProportionateScreenHeight(kSizeFixedSM);
double kSizeResponsiveMD = SizeConfig.getProportionateScreenHeight(kSizeFixedMD);
double kSizeResponsiveLG = SizeConfig.getProportionateScreenHeight(kSizeFixedLG);
double kSizeResponsiveXL = SizeConfig.getProportionateScreenHeight(kSizeFixedXL);
double kSizeResponsiveXXL = SizeConfig.getProportionateScreenHeight(kSizeFixedXXL);

const kColorPrimary = Color(0xFF006cb8);
const kColorPrimaryLight = Color(0xFFA4C4E5);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);

const Color kColorLightBackground = Color(0xFFF3F6FF);
const Color kColorDarkBackground = AppColors.grey5;

const Color kColorLightTextPrimary = AppColors.neutralLightBlue5;
const Color kColorLightTextSecondary = AppColors.neutralLightBlue3;
const Color kColorLightTextWhite = Colors.white;
const Color kColorLightIcon = AppColors.neutralDarkBlue5;

const Color kColorLightFormBackground = AppColors.white4;
const Color kColorLightCardBackground = AppColors.white1;

const Color kColorDarkTextPrimary = AppColors.neutralLightBlue1;
