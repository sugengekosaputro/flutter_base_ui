import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/app_colors.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final String? semanticLabel;
  final TextDirection? textDirection;
  final List<Shadow>? shadows;
  final Color color;
  final double size;

  // Constructor with default values
  const AppIcon({
    super.key,
    required this.icon,
    this.semanticLabel,
    this.textDirection,
    this.shadows,
    this.color = kColorLightIcon, // Default to black
    this.size = 16, // Default to medium (16)
  });

  /// Helper constructor for size variants
  const AppIcon.medium({
    super.key,
    required this.icon,
    this.semanticLabel,
    this.textDirection,
    this.shadows,
    this.color = kColorLightIcon,
  }) : size = 16;

  const AppIcon.small({
    super.key,
    required this.icon,
    this.semanticLabel,
    this.textDirection,
    this.shadows,
    this.color = kColorLightIcon,
  }) : size = 12;

  const AppIcon.large({
    super.key,
    required this.icon,
    this.semanticLabel,
    this.textDirection,
    this.shadows,
    this.color = kColorLightIcon,
  }) : size = 24;

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      icon,
      color: color,
      size: size,
      semanticLabel: semanticLabel,
      textDirection: textDirection,
      shadows: shadows,
    );
  }
}
