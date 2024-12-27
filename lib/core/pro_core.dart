import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_context.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_measure.dart';
import 'package:flutter_ecommerce_tokoto/core/themes/pro_theme.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';

class ProCore {
  /// Installs the core configurations for the app
  static void installContext(BuildContext context) {
    // Initialize AppContext (if not already initialized)
    if (!ProContext.isInitialized) {
      ProContext().setContext(context);
    }

    // Initialize or update SizeConfig
    ProMeasure.init(context);

    // Set the system UI overlay style
    ProCore.systemUiOverlayStyle();
  }

  static ThemeData installDefaultTheme(BuildContext context) {
    return ProTheme.defaultTheme(context);
  }

  static SystemUiOverlayStyle systemUiOverlayStyle() {
    log("System UI Overlay Style set.");
    return const SystemUiOverlayStyle(
      statusBarColor: kColorTransparent, // Make the status bar transparent
      statusBarIconBrightness: Brightness.dark, // Dark icons on a light background
      statusBarBrightness: Brightness.light, // Required for iOS
      systemNavigationBarColor: kColorLightTextWhite, // Navigation bar color
      systemNavigationBarIconBrightness: Brightness.dark, // Dark icons for navigation bar
    );
  }
}
