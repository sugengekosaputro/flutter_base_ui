import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/app_colors.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/shared/size_config.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_bar.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_button.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_card.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_icon.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_skeleton.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import 'c_help_center_viewmodel.dart';

class CHelpCenterView extends StackedView<CHelpCenterViewModel> {
  const CHelpCenterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CHelpCenterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBarCustom(
        context: context,
        centerTitle: true,
        customTitle: 'Help Center',
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.getProportionateScreenWidth(kSizeFixedMD),
          ),
          child: LayoutBuilder(builder: (context, constraint) {
            return ListView(children: [
              const SizedBox(height: kSizeFixedMD),
              AppText(
                'How can we help you ?',
                style: AppTextStyles.headlineMedium(context),
              ),
              const SizedBox(height: kSizeFixedMD),
              AppCard(
                // gradient: LinearGradient(colors: [
                //   Color(0xFF103783).withOpacity(0),
                //   Color(0xFF9bafd9).withOpacity(0.2),
                // ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      const AppIcon.small(icon: FontAwesomeIcons.question),
                      const SizedBox(width: kSizeFixedMD),
                      AppText(
                        "Frequently Asked Question",
                        style: AppTextStyles.titleMedium(context),
                      ),
                    ]),
                    const SizedBox(height: kSizeFixedMD),
                    AppText(
                      "Have a question? Check out our FAQ for quick and easy answers to common concerns. We’re here to help you every step of the way!",
                      style: AppTextStyles.bodySmall(context),
                    ),
                    const SizedBox(height: kSizeFixedMD),
                    AppButton(
                      text: 'Find Answers',
                      onPressed: () {},
                      size: AppButtonSize.small,
                    ),
                  ],
                ),
              ),
              AppCard(
                // gradient: LinearGradient(colors: [
                //   Color(0xFF103783).withOpacity(0),
                //   Color(0xFF9bafd9).withOpacity(0.2),
                // ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      const AppIcon.small(icon: FontAwesomeIcons.bookOpen),
                      const SizedBox(width: kSizeFixedMD),
                      AppText(
                        "User Guideline",
                        style: AppTextStyles.titleMedium(context),
                      ),
                    ]),
                    const SizedBox(height: kSizeFixedMD),
                    AppText(
                      "New here? No problem! Follow these simple guidelines to make the most of your experience. Let’s get you up and running in no time!",
                      style: AppTextStyles.bodySmall(context),
                    ),
                    const SizedBox(height: kSizeFixedMD),
                    AppButton(
                      text: 'Learn More',
                      onPressed: () {},
                      size: AppButtonSize.small,
                    )
                  ],
                ),
              )
              // AppCard(child: Text('data')),
              // AppCard(child: Text('data')),

              // SkeletonLoaderWidget(),
            ]);
          }),
        ),
      ),
    );
  }

  @override
  CHelpCenterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CHelpCenterViewModel();
}
