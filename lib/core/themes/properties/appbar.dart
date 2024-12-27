import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_core.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_text.dart';
import 'package:flutter_ecommerce_tokoto/themes/themes.dart';

AppBarTheme appBarTheme(BuildContext context) => AppBarTheme(
      color: kColorTransparent,
      titleSpacing: 8,
      centerTitle: false,
      systemOverlayStyle: ProCore.systemUiOverlayStyle(),
      titleTextStyle: ProTextStyles.bodyLarge(context)?.copyWith(fontWeight: FontWeight.w600),
      iconTheme:
          const IconThemeData(color: kColorLightIcon, size: kSizeFixedLG, applyTextScaling: true),
    );
