import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final BorderRadiusGeometry borderRadius;
  final Color? backgroundColor;
  final Gradient? gradient;
  final BoxShadow? shadow;
  final double? maxWidth;

  const AppCard({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.all(kSizeFixedMD),
    this.margin = const EdgeInsets.symmetric(vertical: kSizeFixedSM),
    this.borderRadius = const BorderRadius.all(Radius.circular(kSizeFixedMD)),
    this.backgroundColor,
    this.gradient,
    this.shadow,
    this.maxWidth, // New maxWidth property
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // Ensures centering if maxWidth is smaller than the screen width
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth ?? double.infinity, // Apply maxWidth if provided
        ),
        child: Container(
          margin: margin,
          decoration: BoxDecoration(
            color: gradient == null ? backgroundColor ?? kColorLightTextWhite : null,
            gradient: gradient,
            borderRadius: borderRadius,
            boxShadow: shadow != null ? [shadow!] : [],
          ),
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
