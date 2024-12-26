import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/app_colors.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/shared/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppFormIcon extends StatelessWidget {
  final IconData iconData;
  final VoidCallback? onPressed;
  final bool enableIconTap;

  const AppFormIcon(
      {super.key, required this.iconData, this.onPressed, this.enableIconTap = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        SizeConfig.getProportionateScreenWidth(kSizeFixedMD),
        SizeConfig.getProportionateScreenWidth(kSizeFixedMD),
        SizeConfig.getProportionateScreenWidth(kSizeFixedMD),
        SizeConfig.getProportionateScreenWidth(kSizeFixedMD),
      ),
      child: InkWell(
        onTap: enableIconTap ? onPressed : null,
        splashColor: Colors.transparent,
        child: FaIcon(
          iconData,
          size: SizeConfig.getProportionateScreenWidth(kSizeFixedMD),
          // color: AppColors.neutralDarkBlue5,
        ),
      ),
    );
  }
}
