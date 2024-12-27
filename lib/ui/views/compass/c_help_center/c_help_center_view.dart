import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_colors.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_measure.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_appbar.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_button.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_card.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_icon.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_skeleton.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_text.dart';
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
      appBar: ProAppBar(
        context: context,
        customTitle: 'Help Center',
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ProMeasure.getProportionateScreenWidth(kSizeFixedMD),
          ),
          child: LayoutBuilder(builder: (context, constraint) {
            return ListView(children: [
              const SizedBox(height: kSizeFixedMD),
              ProText(
                'How can we help you ?',
                style: ProTextStyles.headlineMedium(context),
              ),
              const SizedBox(height: kSizeFixedMD),
              ProCard(
                // gradient: LinearGradient(colors: [
                //   Color(0xFF103783).withOpacity(0),
                //   Color(0xFF9bafd9).withOpacity(0.2),
                // ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      const ProIcon.small(icon: FontAwesomeIcons.question),
                      const SizedBox(width: kSizeFixedMD),
                      ProText(
                        "Frequently Asked Question",
                        style: ProTextStyles.titleMedium(context),
                      ),
                    ]),
                    const SizedBox(height: kSizeFixedMD),
                    ProText(
                      "Have a question? Check out our FAQ for quick and easy answers to common concerns. We’re here to help you every step of the way!",
                      style: ProTextStyles.bodySmall(context),
                    ),
                    const SizedBox(height: kSizeFixedMD),
                    ProButton(
                      text: 'Find Answers',
                      onPressed: () {},
                      size: ProButtonSize.small,
                    ),
                  ],
                ),
              ),
              ProCard(
                // gradient: LinearGradient(colors: [
                //   Color(0xFF103783).withOpacity(0),
                //   Color(0xFF9bafd9).withOpacity(0.2),
                // ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      const ProIcon.small(icon: FontAwesomeIcons.bookOpen),
                      const SizedBox(width: kSizeFixedMD),
                      ProText(
                        "User Guideline",
                        style: ProTextStyles.titleMedium(context),
                      ),
                    ]),
                    const SizedBox(height: kSizeFixedMD),
                    ProText(
                      "New here? No problem! Follow these simple guidelines to make the most of your experience. Let’s get you up and running in no time!",
                      style: ProTextStyles.bodySmall(context),
                    ),
                    const SizedBox(height: kSizeFixedMD),
                    ProButton(
                      text: 'Learn More',
                      onPressed: () {},
                      size: ProButtonSize.small,
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
