import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce_tokoto/app/app.bottomsheets.dart';
import 'package:flutter_ecommerce_tokoto/app/app.dialogs.dart';
import 'package:flutter_ecommerce_tokoto/app/app.locator.dart';
import 'package:flutter_ecommerce_tokoto/app/app.router.dart';
import 'package:flutter_ecommerce_tokoto/shared/app_context.dart';
import 'package:flutter_ecommerce_tokoto/shared/size_config.dart';
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
    // Initialize AppContext and SizeConfig only once
    _initAppContext(context);

    return MaterialApp(
      theme: theme(appContext!), // Access context from appContext instance
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [StackedService.routeObserver],
      builder: (context, child) {
        // Update configuration whenever context changes
        AppContext().setContext(context);
        SizeConfig.updateConfiguration(context);
        return child!;
      },
    );
  }

  void _initAppContext(BuildContext context) {
    // Set context for AppContext and SizeConfig initialization
    AppContext().setContext(context);
    SizeConfig.init(context);

    // Set the system overlay style for light theme
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle());
  }
}
