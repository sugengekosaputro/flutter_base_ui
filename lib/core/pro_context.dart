import 'dart:developer';

import 'package:flutter/material.dart';

class ProContext {
  static final ProContext _instance = ProContext._internal();
  static bool _isInitialized = false; // Flag to ensure one-time initialization
  static late BuildContext _context;

  ProContext._internal();

  factory ProContext() => _instance;

  static bool get isInitialized => _isInitialized;

  /// Set the context only once
  void setContext(BuildContext context) {
    _context = context;
    _isInitialized = true;

    log("AppContext initialized.");
  }

  /// Retrieve the current context
  BuildContext get context => _context;
}
