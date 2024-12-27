import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_context.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_text.dart';

import '../pro_colors.dart';

class ProDividerText extends StatelessWidget {
  final String text;
  final Color? dividerColor; // Optional color for the divider
  final double? dividerThickness; // Optional thickness for the divider
  final TextStyle? textStyle; // Optional style for the text

  const ProDividerText({
    super.key,
    required this.text,
    this.dividerColor = ProColors.neutralLightBlue2, // Default color
    this.dividerThickness = 0.5, // Default thickness
    this.textStyle, // Default null for text style, allowing customization
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kSizeFixedLG),
      child: Row(
        children: [
          // Left Divider
          Expanded(
            child: Divider(
              color: dividerColor, // Custom color or default
              thickness: dividerThickness, // Custom thickness or default
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kSizeFixedSM),
            child: ProText(
              text,
              style: textStyle ??
                  ProTextStyles.labelMedium(context)?.copyWith(
                    color: ProColors.neutralLightBlue4, // Default color for the text
                  ),
            ),
          ),
          // Right Divider
          Expanded(
            child: Divider(
              color: dividerColor, // Custom color or default
              thickness: dividerThickness, // Custom thickness or default
            ),
          ),
        ],
      ),
    );
  }
}
