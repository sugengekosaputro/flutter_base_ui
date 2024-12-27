import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_measure.dart';
import 'package:flutter_ecommerce_tokoto/ui/views/home/data_dummy.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/base_card_widget.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(kSizeFixedMD),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                ProMeasure.isOrientationLandscape() ? 2 : 1, // Adjust the number of items per row
            childAspectRatio: 3 / 1, // Adjust aspect ratio as needed W/H
            crossAxisSpacing: kSizeFixedMD,
            mainAxisSpacing: kSizeFixedMD,
          ),
          itemCount: data.length, // Number of items in the grid
          itemBuilder: (context, i) {
            final feature = data[i];
            return BaseCardWidget(
              feature: feature,
              onTap: () => viewModel.navigateTo(feature.id),
            );
          },
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
