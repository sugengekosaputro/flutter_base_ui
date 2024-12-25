import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'screen_list_viewmodel.dart';

class ScreenListView extends StackedView<ScreenListViewModel> {
  const ScreenListView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ScreenListViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: TextButton(
              onPressed: () => viewModel.pickFiles(),
              child: Text('Upload File')),
        ),
      ),
    );
  }

  @override
  ScreenListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ScreenListViewModel();
}
