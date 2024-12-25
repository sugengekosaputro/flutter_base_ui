import 'package:flutter/material.dart';
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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  CHelpCenterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CHelpCenterViewModel();
}
