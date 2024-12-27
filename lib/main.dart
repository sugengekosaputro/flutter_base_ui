import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce_tokoto/app/app.bottomsheets.dart';
import 'package:flutter_ecommerce_tokoto/app/app.dialogs.dart';
import 'package:flutter_ecommerce_tokoto/app/app.locator.dart';
import 'package:flutter_ecommerce_tokoto/app/app.router.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_context.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_core.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_measure.dart';
import 'package:flutter_ecommerce_tokoto/core/themes/pro_theme.dart';
import 'package:flutter_ecommerce_tokoto/themes/themes.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    ProCore.installContext(context);
    return MaterialApp(
      theme: ProCore.installDefaultTheme(context),
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [StackedService.routeObserver],
      builder: (context, child) {
        ProCore.installContext(context);
        return child!;
      },
    );
  }
}
