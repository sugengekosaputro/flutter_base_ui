import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_colors.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_measure.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_text.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';

enum ProButtonVariant { primary, danger, outline, transparent }

enum ProButtonSize { normal, small }

enum ProButtonIconPosition { prefix, suffix }

class ProButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ProButtonVariant variant;
  final ProButtonSize size;
  final bool isDisabled;
  final bool isLoading;
  final Widget? icon;
  final ProButtonIconPosition iconPosition; // Icon position
  final double? width;
  final double? height;
  final bool isFullWidth;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;

  const ProButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.variant = ProButtonVariant.primary,
    this.size = ProButtonSize.normal,
    this.isDisabled = false,
    this.isLoading = false,
    this.icon,
    this.iconPosition = ProButtonIconPosition.prefix, // Default prefix
    this.width,
    this.height,
    this.isFullWidth = true,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final double buttonHeight = height ?? (size == ProButtonSize.small ? 36.0 : 48.0);
    final double fontSize = size == ProButtonSize.small ? 14.0 : 16.0;

    // Default colors based on variant
    final Color defaultBackgroundColor;
    final Color defaultTextColor;
    final Color defaultBorderColor;

    switch (variant) {
      case ProButtonVariant.danger:
        defaultBackgroundColor = kColorLightTextError;
        defaultTextColor = kColorLightTextWhite;
        defaultBorderColor = kColorTransparent;
        break;
      case ProButtonVariant.outline:
        defaultBackgroundColor = kColorTransparent;
        defaultTextColor = Theme.of(context).primaryColor;
        defaultBorderColor = Theme.of(context).primaryColor;
        break;
      case ProButtonVariant.transparent:
        defaultBackgroundColor = kColorTransparent;
        defaultTextColor = Theme.of(context).primaryColor;
        defaultBorderColor = kColorTransparent;
        break;
      default:
        defaultBackgroundColor = Theme.of(context).primaryColor;
        defaultTextColor = kColorLightTextWhite;
        defaultBorderColor = kColorTransparent;
    }

    final Color resolvedBackgroundColor = backgroundColor ?? defaultBackgroundColor;
    final Color resolvedTextColor = textColor ?? defaultTextColor;
    final Color resolvedBorderColor = borderColor ?? defaultBorderColor;

    final ButtonStyle style = FilledButton.styleFrom(
      backgroundColor:
          variant == ProButtonVariant.outline || variant == ProButtonVariant.transparent
              ? kColorTransparent
              : resolvedBackgroundColor,
      foregroundColor: resolvedTextColor,
      disabledBackgroundColor: Theme.of(context).disabledColor,
      disabledForegroundColor: ProColors.white1,
      padding:
          EdgeInsets.symmetric(horizontal: ProMeasure.getProportionateScreenWidth(kSizeFixedMD)),
      fixedSize: width != null ? Size(width!, buttonHeight) : null,
      minimumSize: isFullWidth ? Size(double.infinity, buttonHeight) : null,
      side: variant == ProButtonVariant.outline
          ? BorderSide(color: resolvedBorderColor, width: 1.2)
          : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ProMeasure.getProportionateScreenWidth(kSizeFixedLG)),
      ),
    );

    return FilledButton(
      onPressed: (isDisabled || isLoading) ? null : onPressed,
      style: style,
      child: isLoading
          ? SizedBox(
              width: ProMeasure.getProportionateScreenWidth(fontSize),
              height: ProMeasure.getProportionateScreenHeight(fontSize),
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(resolvedTextColor),
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, // Ensures vertical alignment
              children: [
                if (icon != null && iconPosition == ProButtonIconPosition.prefix) ...[
                  Center(child: icon!),
                  SizedBox(width: ProMeasure.getProportionateScreenWidth(12)),
                ],
                ProText(
                  text,
                  style: TextStyle(
                    fontSize: ProMeasure.getProportionateFontSize(fontSize),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                if (icon != null && iconPosition == ProButtonIconPosition.suffix) ...[
                  SizedBox(width: ProMeasure.getProportionateScreenWidth(12)),
                  Center(child: icon!),
                ],
              ],
            ),
    );
  }
}
