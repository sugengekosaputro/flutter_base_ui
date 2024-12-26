import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_text.dart';
import 'package:flutter_ecommerce_tokoto/themes/themes.dart';

AppBarTheme appBarTheme(BuildContext context) => AppBarTheme(
      color: Colors.transparent,
      titleSpacing: 8,
      centerTitle: false,
      systemOverlayStyle: systemUiOverlayStyle(),
      titleTextStyle: AppTextStyles.bodyLarge(context)?.copyWith(fontWeight: FontWeight.w600),
      iconTheme: IconThemeData(color: kColorLightIcon, size: kSizeFixedLG, applyTextScaling: true),
    );
