import 'dart:developer';

import 'package:flutter/material.dart';

/// Use proportionateScreenWidth for anything related to width (padding, margins, font size, etc.).
/// Use proportionateScreenHeight for anything related to height (vertical gaps, button heights, etc.).
/// For uniform scaling of both width and height, choose the dominant dimension. For example, fonts typically scale with width.

class ProMeasure {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late Orientation orientation;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  /// Initialize or update SizeConfig
  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;

    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    log("SizeConfig initialized.");
  }

  // /// This method checks if the device orientation has changed and updates the configuration accordingly
  // static void updateConfiguration(BuildContext context) {
  //   _mediaQueryData = MediaQuery.of(context);
  //   screenWidth = _mediaQueryData.size.width;
  //   screenHeight = _mediaQueryData.size.height;
  //   orientation = _mediaQueryData.orientation;
  //
  //   /// Recalculate block sizes on orientation change
  //   blockSizeHorizontal = screenWidth / 100;
  //   blockSizeVertical = screenHeight / 100;
  //   log('SizeConfig updated()');
  // }

  /// Get the proportionate height as per screen size
  static double getProportionateScreenHeight(double inputHeight) {
    double baseHeight = 812.0; // iPhone X height as base
    // Scale based on the screen height, but limit the scale ratio to avoid extreme cases
    return (inputHeight / baseHeight) * screenHeight;
  }

  /// Get the proportionate width as per screen size
  static double getProportionateScreenWidth(double inputWidth) {
    double baseWidth = 375.0; // iPhone 8 width as base
    // Scale based on the screen width, but limit the scale ratio to avoid extreme cases
    return (inputWidth / baseWidth) * screenWidth;
  }

  /// Use block-based sizing for smaller increments
  static double widthPercent(double percentage) => blockSizeHorizontal * percentage;

  static double heightPercent(double percentage) => blockSizeVertical * percentage;

  /// Add minimum and maximum thresholds to prevent extreme scaling:
  static double scaledValue(double value) {
    // Dynamically limit scaling for consistency
    return value.clamp(8.0, screenHeight * 0.05); // Up to 5% of screen height
  }

  /// Get proportionate font size based on screen size
  static double getProportionateFontSize(double inputFontSize) {
    double baseDimension = screenWidth < screenHeight ? screenWidth : screenHeight;
    // Dynamic adjustment for fonts
    return (inputFontSize / 375.0) * baseDimension;
  }

  static bool isOrientationLandscape() {
    return orientation == Orientation.landscape;
  }
}
