import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/app_colors.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';

enum AppButtonVariant { primary, danger, outline, transparent }

enum AppButtonSize { normal, small }

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final AppButtonSize size;
  final bool isDisabled;
  final bool isLoading;
  final Widget? icon;
  final double? width;
  final double? height;
  final bool isFullWidth; // New property for controlling max width

  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.size = AppButtonSize.normal,
    this.isDisabled = false,
    this.isLoading = false,
    this.icon,
    this.width,
    this.height,
    this.isFullWidth = true, // Default to max width
  });

  @override
  Widget build(BuildContext context) {
    // Fixed heights and font sizes based on size
    final double buttonHeight = height ?? (size == AppButtonSize.small ? 36.0 : 48.0);
    final double fontSize = size == AppButtonSize.small ? 14.0 : 16.0;

    // Colors based on variant
    final Color backgroundColor;
    final Color textColor;
    final Color borderColor;

    switch (variant) {
      case AppButtonVariant.danger:
        backgroundColor = Colors.red;
        textColor = Colors.white;
        borderColor = Colors.transparent;
        break;
      case AppButtonVariant.outline:
        backgroundColor = Colors.transparent;
        textColor = Theme.of(context).primaryColor;
        borderColor = Theme.of(context).primaryColor;
        break;
      case AppButtonVariant.transparent:
        backgroundColor = Colors.transparent;
        textColor = Theme.of(context).primaryColor;
        borderColor = Colors.transparent;
        break;
      default: // Primary
        backgroundColor = Theme.of(context).colorScheme.primary;
        textColor = Colors.white;
        borderColor = Colors.transparent;
    }

    // Button style
    final ButtonStyle style = FilledButton.styleFrom(
      backgroundColor:
          variant == AppButtonVariant.outline || variant == AppButtonVariant.transparent
              ? Colors.transparent
              : backgroundColor,
      foregroundColor: textColor,
      disabledBackgroundColor: Theme.of(context).disabledColor,
      disabledForegroundColor: Colors.white70,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      fixedSize: width != null
          ? Size(width!, buttonHeight) // Use explicit width if provided
          : null,
      minimumSize: isFullWidth
          ? Size(double.infinity, buttonHeight) // Full width by default
          : null, // No constraint for text-based width
      side: variant == AppButtonVariant.outline ? BorderSide(color: borderColor, width: 1.2) : null,
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
                valueColor: AlwaysStoppedAnimation<Color>(textColor),
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min, // Row adjusts to content width
              mainAxisAlignment: MainAxisAlignment.center, // Center content within the row
              children: [
                if (icon != null) ...[
                  icon!,
                  const SizedBox(width: 8),
                ],
                Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
    );
  }
}
