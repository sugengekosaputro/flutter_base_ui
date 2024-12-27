import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ecommerce_tokoto/app/app.locator.dart';
import 'package:flutter_ecommerce_tokoto/app/app.router.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_context.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/core/helper/pro_helper_focus.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_measure.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_button.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_divider_text.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_icon.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_text.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_toast.dart';
import 'package:flutter_ecommerce_tokoto/core/themes/properties/input.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginForm extends ViewModelWidget<LoginFormViewModel> {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, LoginFormViewModel viewModel) {
    return Form(
      key: viewModel.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            style: textFormFieldStyle(context),
            decoration: const InputDecoration(
              hintText: "Enter your email",
              prefixIcon: ProIcon(
                icon: FontAwesomeIcons.envelope,
                enableIconPrefixSuffix: true,
              ),
            ),
            onSaved: (newValue) => viewModel.email = newValue ?? '',
            onFieldSubmitted: (_) {
              ProHelperFocus.requestFocus(context, viewModel.passwordFocusNode);
            },
          ),
          SizedBox(height: ProMeasure.getProportionateScreenHeight(kSizeFixedMD)),
          TextFormField(
            focusNode: viewModel.passwordFocusNode,
            keyboardType: TextInputType.text,
            obscureText: viewModel.isObscureText,
            textInputAction: TextInputAction.done,
            style: textFormFieldStyle(context),
            decoration: InputDecoration(
              hintText: "Enter your password",
              prefixIcon: const ProIcon(
                icon: FontAwesomeIcons.lock,
                enableIconPrefixSuffix: true,
              ),
              suffixIcon: ProIcon(
                icon: viewModel.isObscureText ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                enableIconPrefixSuffix: true,
                onTap: () {
                  viewModel.togglePasswordVisibility();
                },
              ),
            ),
            onSaved: (newValue) => viewModel.password = newValue ?? '',
            onFieldSubmitted: (_) {
              ProHelperFocus.unfocus(context);
            },
          ),
          SizedBox(
            height: ProMeasure.getProportionateScreenHeight(kSizeFixedMD),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kSizeFixedSM),
            child: Align(
              alignment: Alignment.center,
              child: ProText(
                'Forgot Password ?',
                onTap: () => AppToast.show(context: context, message: 'On Press Idaman'),
                textAlign: TextAlign.center,
                style: ProTextStyles.headlineLarge(context),
                // style: appContextTextTheme!.headlineLarge,
                // style: appContextTextTheme!.labelMedium
                //     ?.copyWith(color: kColorPrimary, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: ProMeasure.getProportionateScreenHeight(kSizeFixedLargerMinimal),
          ),
          ProButton(
            text: 'Continue',
            onPressed: () {
              if (viewModel.formKey.currentState?.validate() ?? false) {
                viewModel.formKey.currentState?.save();
                // TODO: Handle login logic here
                print('Email: ${viewModel.email}, Password: ${viewModel.password}');
              }
            },
          ),
          const ProDividerText(text: 'Or sign with'),
          ProButton(
            text: 'Idaman',
            onPressed: () {
              AppToast.show(context: context, message: 'On Press Idaman');
            },
            variant: ProButtonVariant.outline,
            icon: Image.asset(
              'assets/logos/logo_idaman.png',
              width: 24.0,
              height: 24.0,
            ),
          ),
          SizedBox(
            height: ProMeasure.getProportionateScreenHeight(kSizeFixedLargerMinimal),
          ),
          ProButton(
            text: 'Help Center',
            isFullWidth: false,
            onPressed: viewModel.navigateToHelpCenter,
            variant: ProButtonVariant.danger,
            size: ProButtonSize.small,
            icon: const ProIcon.medium(
              icon: FontAwesomeIcons.headset,
              color: kColorLightTextWhite,
            ),
          ),
        ],
      ),
    );
  }
}

class LoginFormViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final formKey = GlobalKey<FormState>();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  String email = '';
  String password = '';
  bool isObscureText = true;

  void togglePasswordVisibility() {
    isObscureText = !isObscureText;
    notifyListeners();
  }

  navigateToHelpCenter() {
    _navigationService.navigateToCHelpCenterView();
  }

  @override
  void dispose() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
