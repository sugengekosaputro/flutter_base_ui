import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'material_design_viewmodel.dart';

class MaterialDesignView extends StackedView<MaterialDesignViewModel> {
  const MaterialDesignView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MaterialDesignViewModel viewModel,
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
  MaterialDesignViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MaterialDesignViewModel();
}
