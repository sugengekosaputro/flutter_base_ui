import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/app_colors.dart';
import 'package:flutter_ecommerce_tokoto/shared/app_context.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/shared/size_config.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_card.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_otp.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_text.dart';
import 'package:flutter_ecommerce_tokoto/ui/views/compass/c_login/c_login_viewmodel.dart';
import 'package:flutter_ecommerce_tokoto/ui/views/compass/c_login/widget/login_form.dart';
import 'package:stacked/stacked.dart';

class CLoginView extends StackedView<CLoginViewModel> {
  const CLoginView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, CLoginViewModel viewModel, Widget? child) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kColorLightTextWhite,
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          double screenHeight = constraints.maxHeight;
          double screenWidth = constraints.maxWidth;
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.getProportionateScreenWidth(kSizeFixedMD),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: SizeConfig.heightPercent(kSizeFixedSM)),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: kSizeFixedMD),
                  //   child: Image.asset(
                  //     'assets/logos/logo_new.png',
                  //     width: screenWidth * 0.4,
                  //     height: screenWidth * 0.4,
                  //   ),
                  // ),
                  // SizedBox(height: SizeConfig.getProportionateScreenHeight(kSizeFixedXXL)),
                  AppText(
                    'Welcome Back',
                    style: AppTextStyles.headlineLarge(context),
                  ),
                  AppText(
                    'tes',
                    style: AppTextStyles.displayLarge(context),
                  ),
                  SizedBox(height: SizeConfig.getProportionateScreenHeight(kSizeFixedSM)),
                  AppText(
                    'Sign in with your email and password',
                    style: AppTextStyles.labelMedium(context),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.heightPercent(kSizeFixedSM)),

                  // Wrap LoginForm in ViewModelBuilder
                  ViewModelBuilder<LoginFormViewModel>.reactive(
                    viewModelBuilder: () => LoginFormViewModel(),
                    builder: (context, viewModel, child) {
                      return const LoginForm();
                    },
                  ),
                  AppOtp(
                    otpLength: 5,
                    onCompleted: (otp) {
                      log(otp);
                      if (otp == '55555') {
                        log('benar');
                        viewModel.setOtpErrror(false); // Reset error state
                      } else {
                        viewModel.setOtpErrror(true); // Set error state to true if OTP is incorrect
                      }
                    },
                    setError: viewModel.isOtpError, // Pass the error state from your viewModel
                    errorMessage: 'Salah Ngentod', // Custom error message if needed
                  ),

                  AppCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Dynamic Title",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "This is a base card with dynamic content. You can replace the child with any widget you want!",
                        ),
                      ],
                    ),
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    // shadow: BoxShadow(
                    //   color: Colors.black26,
                    //   blurRadius: 8,
                    //   offset: Offset(0, 2),
                    // ),
                  ),

                  AppCard(
                    backgroundColor: AppColors.neutralDarkBlue5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Dynamic Title",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "This is a base card with dynamic content. You can replace the child with any widget you want!",
                        ),
                      ],
                    ),
                  ),
                  AppCard(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.star, color: Colors.amber),
                        Text("Another dynamic widget here"),
                      ],
                    ),
                    shadow: BoxShadow(
                      color: Colors.red.withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  @override
  CLoginViewModel viewModelBuilder(BuildContext context) => CLoginViewModel();
}
