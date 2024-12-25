import 'package:flutter/material.dart';

class AppSpacer extends StatelessWidget {
  final double width;
  final double height;

  const AppSpacer({super.key, this.width = 0.0, this.height = 0.0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
