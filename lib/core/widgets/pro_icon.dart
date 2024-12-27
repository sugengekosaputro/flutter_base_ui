import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_measure.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProIcon extends StatelessWidget {
  final IconData icon;
  final String? semanticLabel;
  final TextDirection? textDirection;
  final List<Shadow>? shadows;
  final Color color;
  final double size;
  final VoidCallback? onTap;
  final bool enableRippleEffect;
  final bool enableIconPrefixSuffix;
  final EdgeInsets? padding;

  const ProIcon({
    super.key,
    required this.icon,
    this.semanticLabel,
    this.textDirection,
    this.shadows,
    this.color = kColorLightIcon,
    this.size = kSizeFixedMD,
    this.onTap,
    this.enableRippleEffect = false,
    this.enableIconPrefixSuffix = false,
    this.padding,
  });

  /// Helper constructors for predefined size variants
  const ProIcon.medium({
    super.key,
    required this.icon,
    this.semanticLabel,
    this.textDirection,
    this.shadows,
    this.color = kColorLightIcon,
    this.onTap,
    this.enableRippleEffect = false,
    this.enableIconPrefixSuffix = false,
    this.padding,
  }) : size = kSizeFixedMD;

  const ProIcon.small({
    super.key,
    required this.icon,
    this.semanticLabel,
    this.textDirection,
    this.shadows,
    this.color = kColorLightIcon,
    this.onTap,
    this.enableRippleEffect = false,
    this.enableIconPrefixSuffix = false,
    this.padding,
  }) : size = 12;

  const ProIcon.large({
    super.key,
    required this.icon,
    this.semanticLabel,
    this.textDirection,
    this.shadows,
    this.color = kColorLightIcon,
    this.onTap,
    this.enableRippleEffect = false,
    this.enableIconPrefixSuffix = false,
    this.padding,
  }) : size = kSizeFixedLG;

  @override
  Widget build(BuildContext context) {
    final EdgeInsets effectivePadding = enableIconPrefixSuffix
        ? padding ??
            EdgeInsets.fromLTRB(
              ProMeasure.getProportionateScreenWidth(kSizeFixedMD),
              ProMeasure.getProportionateScreenWidth(kSizeFixedMD),
              ProMeasure.getProportionateScreenWidth(kSizeFixedMD),
              ProMeasure.getProportionateScreenWidth(kSizeFixedMD),
            )
        : EdgeInsets.zero;

    return Padding(
      padding: effectivePadding,
      child: InkWell(
        onTap: onTap,
        splashColor: enableRippleEffect ? kColorSchemePrimary.withOpacity(0.2) : kColorTransparent,
        highlightColor:
            enableRippleEffect ? kColorSchemePrimary.withOpacity(0.2) : kColorTransparent,
        child: FaIcon(
          icon,
          color: color,
          size: ProMeasure.getProportionateScreenWidth(size),
          semanticLabel: semanticLabel,
          textDirection: textDirection,
          shadows: shadows,
        ),
      ),
    );
  }
}
