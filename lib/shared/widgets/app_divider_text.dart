import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/app_context.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_text.dart';

import '../app_colors.dart';

class AppDividerText extends StatelessWidget {
  final String text;

  const AppDividerText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kSizeFixedLG),
      child: Row(
        children: [
          const Expanded(
              child: Divider(
            color: AppColors.neutralLightBlue2,
            thickness: 0.5,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: AppText(
              text,
              style: AppTextStyles.labelMedium(context)?.copyWith(
                color: AppColors.neutralLightBlue4,
              ),
            ),
          ),
          const Expanded(
            child: Divider(
              color: AppColors.neutralLightBlue2,
              thickness: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
