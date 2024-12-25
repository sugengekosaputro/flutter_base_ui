import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ecommerce_tokoto/shared/app_context.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/shared/helper/focus_helper.dart';
import 'package:flutter_ecommerce_tokoto/shared/size_config.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_button.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_divider_text.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_form_suffix_icon.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_icon.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_text.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_toast.dart';
import 'package:flutter_ecommerce_tokoto/themes/input.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

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
              prefixIcon: AppFormSuffixIcon(iconData: FontAwesomeIcons.envelope),
            ),
            onSaved: (newValue) => viewModel.email = newValue ?? '',
            onFieldSubmitted: (_) {
              FocusHelper.requestFocus(context, viewModel.passwordFocusNode);
            },
          ),
          SizedBox(height: SizeConfig.getProportionateScreenHeight(kSizeFixedMD)),
          TextFormField(
            focusNode: viewModel.passwordFocusNode,
            keyboardType: TextInputType.text,
            obscureText: viewModel.isObscureText,
            textInputAction: TextInputAction.done,
            style: textFormFieldStyle(context),
            decoration: InputDecoration(
              hintText: "Enter your password",
              prefixIcon: const AppFormSuffixIcon(iconData: FontAwesomeIcons.lock),
              suffixIcon: AppFormSuffixIcon(
                iconData:
                    viewModel.isObscureText ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                enableIconTap: true,
                onPressed: () {
                  viewModel.togglePasswordVisibility();
                },
              ),
            ),
            onSaved: (newValue) => viewModel.password = newValue ?? '',
            onFieldSubmitted: (_) {
              FocusHelper.unfocus(context);
            },
          ),
          SizedBox(
            height: SizeConfig.getProportionateScreenHeight(kSizeFixedMD),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kSizeFixedSM),
            child: Align(
              alignment: Alignment.center,
              child: AppText(
                'Forgot Password ?',
                onTap: () => AppToast.show(context: context, message: 'On Press Idaman'),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge,
                // style: appContextTextTheme!.headlineLarge,
                // style: appContextTextTheme!.labelMedium
                //     ?.copyWith(color: kColorPrimary, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.getProportionateScreenHeight(kSizeFixedLargerMinimal),
          ),
          AppButton(
            text: 'Continue',
            onPressed: () {
              if (viewModel.formKey.currentState?.validate() ?? false) {
                viewModel.formKey.currentState?.save();
                // TODO: Handle login logic here
                print('Email: ${viewModel.email}, Password: ${viewModel.password}');
              }
            },
          ),
          const AppDividerText(text: 'Or sign with'),
          AppButton(
            text: 'Idaman',
            onPressed: () {
              AppToast.show(context: context, message: 'On Press Idaman');
            },
            variant: AppButtonVariant.outline,
            icon: Image.asset(
              'assets/logos/logo_idaman.png',
              width: 24.0,
              height: 24.0,
            ),
          ),
          SizedBox(
            height: SizeConfig.getProportionateScreenHeight(kSizeFixedLargerMinimal),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AppButton(
                  text: 'Help Center',
                  onPressed: () {
                    AppToast.show(context: context, message: 'On Press Help Center');
                  },
                  variant: AppButtonVariant.transparent,
                  size: AppButtonSize.small,
                  icon: const AppIcon.large(
                    icon: FontAwesomeIcons.question,
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: AppButton(
                  text: 'Help Center',
                  onPressed: () {
                    AppToast.show(context: context, message: 'On Press Help Center');
                  },
                  variant: AppButtonVariant.transparent,
                  size: AppButtonSize.small,
                  icon: const AppIcon.large(
                    icon: FontAwesomeIcons.question,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          AppButton(
            text: 'Help Center',
            isFullWidth: false,
            onPressed: () {
              AppToast.show(context: context, message: 'On Press Help Center');
            },
            variant: AppButtonVariant.transparent,
            size: AppButtonSize.normal,
            icon: const AppIcon.large(
              icon: FontAwesomeIcons.question,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class LoginFormViewModel extends BaseViewModel {
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

  @override
  void dispose() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
