import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_colors.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_measure.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_card.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_otp.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_text.dart';
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
                horizontal: ProMeasure.getProportionateScreenWidth(kSizeFixedMD),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: ProMeasure.heightPercent(kSizeFixedSM)),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: kSizeFixedMD),
                  //   child: Image.asset(
                  //     'assets/logos/logo_new.png',
                  //     width: screenWidth * 0.4,
                  //     height: screenWidth * 0.4,
                  //   ),
                  // ),
                  // SizedBox(height: SizeConfig.getProportionateScreenHeight(kSizeFixedXXL)),
                  ProText(
                    'Welcome Back',
                    style: ProTextStyles.headlineLarge(context),
                  ),
                  ProText(
                    'tes',
                    style: ProTextStyles.displayLarge(context),
                  ),
                  SizedBox(height: ProMeasure.getProportionateScreenHeight(kSizeFixedSM)),
                  ProText(
                    'Sign in with your email and password',
                    style: ProTextStyles.labelMedium(context),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: ProMeasure.heightPercent(kSizeFixedSM)),

                  // Wrap LoginForm in ViewModelBuilder
                  ViewModelBuilder<LoginFormViewModel>.reactive(
                    viewModelBuilder: () => LoginFormViewModel(),
                    builder: (context, viewModel, child) {
                      return const LoginForm();
                    },
                  ),
                  ProOtp(
                    otpLength: 5,
                    decoration: InputDecoration(
                      counterText: '',
                      filled: true,
                      fillColor: Colors.yellow,
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                    ),
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

                  ProCard(
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

                  ProCard(
                    backgroundColor: ProColors.neutralDarkBlue5,
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
                  ProCard(
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
