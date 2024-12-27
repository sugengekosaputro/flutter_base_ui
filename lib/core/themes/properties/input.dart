import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_colors.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_text.dart';

InputDecorationTheme inputDecorationTheme(BuildContext context) {
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    filled: true,
    fillColor: kColorLightFormFilled,
    hintStyle: ProTextStyles.bodyMedium(context)
        ?.copyWith(fontWeight: FontWeight.w500, color: ProColors.neutralLightBlue3),
    contentPadding: const EdgeInsets.symmetric(horizontal: kSizeFixedXL, vertical: kSizeFixedMD),
    border: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    prefixIconColor: kColorLightIcon,
    suffixIconColor: kColorLightIcon,
  );
}

OutlineInputBorder outlineInputBorder({isFocus = false}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(kSizeFixedMD),
    borderSide: const BorderSide(
      color: kColorTransparent,
    ),
    gapPadding: kSizeFixedMD,
  );
}

TextStyle? textFormFieldStyle(BuildContext context) => ProTextStyles.bodyMedium(context);
