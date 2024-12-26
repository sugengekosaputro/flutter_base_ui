import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/app_colors.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';

enum AppButtonVariant { primary, danger, outline, transparent }

enum AppButtonSize { normal, small }

enum AppButtonIconPosition { prefix, suffix }

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final AppButtonSize size;
  final bool isDisabled;
  final bool isLoading;
  final Widget? icon;
  final AppButtonIconPosition iconPosition; // Icon position
  final double? width;
  final double? height;
  final bool isFullWidth;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.size = AppButtonSize.normal,
    this.isDisabled = false,
    this.isLoading = false,
    this.icon,
    this.iconPosition = AppButtonIconPosition.prefix, // Default prefix
    this.width,
    this.height,
    this.isFullWidth = true,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final double buttonHeight = height ?? (size == AppButtonSize.small ? 36.0 : 48.0);
    final double fontSize = size == AppButtonSize.small ? 14.0 : 16.0;

    // Default colors based on variant
    final Color defaultBackgroundColor;
    final Color defaultTextColor;
    final Color defaultBorderColor;

    switch (variant) {
      case AppButtonVariant.danger:
        defaultBackgroundColor = Colors.red;
        defaultTextColor = Colors.white;
        defaultBorderColor = Colors.transparent;
        break;
      case AppButtonVariant.outline:
        defaultBackgroundColor = Colors.transparent;
        defaultTextColor = Theme.of(context).primaryColor;
        defaultBorderColor = Theme.of(context).primaryColor;
        break;
      case AppButtonVariant.transparent:
        defaultBackgroundColor = Colors.transparent;
        defaultTextColor = Theme.of(context).primaryColor;
        defaultBorderColor = Colors.transparent;
        break;
      default:
        defaultBackgroundColor = Theme.of(context).primaryColor;
        defaultTextColor = Colors.white;
        defaultBorderColor = Colors.transparent;
    }

    final Color resolvedBackgroundColor = backgroundColor ?? defaultBackgroundColor;
    final Color resolvedTextColor = textColor ?? defaultTextColor;
    final Color resolvedBorderColor = borderColor ?? defaultBorderColor;

    final ButtonStyle style = FilledButton.styleFrom(
      backgroundColor:
          variant == AppButtonVariant.outline || variant == AppButtonVariant.transparent
              ? Colors.transparent
              : resolvedBackgroundColor,
      foregroundColor: resolvedTextColor,
      disabledBackgroundColor: Theme.of(context).disabledColor,
      disabledForegroundColor: Colors.white70,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      fixedSize: width != null ? Size(width!, buttonHeight) : null,
      minimumSize: isFullWidth ? Size(double.infinity, buttonHeight) : null,
      side: variant == AppButtonVariant.outline
          ? BorderSide(color: resolvedBorderColor, width: 1.2)
          : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kSizeFixedLG),
      ),
    );

    return FilledButton(
      onPressed: (isDisabled || isLoading) ? null : onPressed,
      style: style,
      child: isLoading
          ? SizedBox(
              width: fontSize,
              height: fontSize,
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
                if (icon != null && iconPosition == AppButtonIconPosition.prefix) ...[
                  Center(child: icon!),
                  const SizedBox(width: 12),
                ],
                Text(
                  text,
                  style: TextStyle(
                      fontSize: fontSize, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
                ),
                if (icon != null && iconPosition == AppButtonIconPosition.suffix) ...[
                  const SizedBox(width: 12),
                  Center(child: icon!),
                ],
              ],
            ),
    );
  }
}
