import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final BorderRadiusGeometry borderRadius;
  final Color? backgroundColor;
  final BoxShadow? shadow;

  const AppCard({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.all(kSizeFixedMD),
    this.margin = const EdgeInsets.all(kSizeFixedSM),
    this.borderRadius = const BorderRadius.all(Radius.circular(kSizeFixedMD)),
    this.backgroundColor,
    this.shadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor ?? kColorLightCardBackground,
        borderRadius: borderRadius,
        boxShadow: shadow != null ? [shadow!] : [],
      ),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
