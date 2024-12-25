import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle? displayLarge(BuildContext context) => Theme.of(context).textTheme.displayLarge;

  static TextStyle? displayMedium(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium;

  static TextStyle? displaySmall(BuildContext context) => Theme.of(context).textTheme.displaySmall;

  static TextStyle? headlineLarge(BuildContext context) =>
      Theme.of(context).textTheme.headlineLarge;

  static TextStyle? headlineMedium(BuildContext context) =>
      Theme.of(context).textTheme.headlineMedium;

  static TextStyle? headlineSmall(BuildContext context) =>
      Theme.of(context).textTheme.headlineSmall;

  static TextStyle? titleLarge(BuildContext context) => Theme.of(context).textTheme.titleLarge;

  static TextStyle? titleMedium(BuildContext context) => Theme.of(context).textTheme.titleMedium;

  static TextStyle? titleSmall(BuildContext context) => Theme.of(context).textTheme.titleSmall;

  static TextStyle? bodyLarge(BuildContext context) => Theme.of(context).textTheme.bodyLarge;

  static TextStyle? bodyMedium(BuildContext context) => Theme.of(context).textTheme.bodyMedium;

  static TextStyle? bodySmall(BuildContext context) => Theme.of(context).textTheme.bodySmall;

  static TextStyle? labelLarge(BuildContext context) => Theme.of(context).textTheme.labelLarge;

  static TextStyle? labelMedium(BuildContext context) => Theme.of(context).textTheme.labelMedium;

  static TextStyle? labelSmall(BuildContext context) => Theme.of(context).textTheme.labelSmall;
}

class AppText extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;
  final VoidCallback? onTap;

  const AppText(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Text(
        data,
        style: style ?? Theme.of(context).textTheme.bodyMedium,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        textScaler: textScaler,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        selectionColor: selectionColor,
      ),
    );
  }
}
