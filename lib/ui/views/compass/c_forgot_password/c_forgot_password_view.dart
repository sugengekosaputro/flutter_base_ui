import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'c_forgot_password_viewmodel.dart';

class CForgotPasswordView extends StackedView<CForgotPasswordViewModel> {
  const CForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CForgotPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  CForgotPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CForgotPasswordViewModel();
}
