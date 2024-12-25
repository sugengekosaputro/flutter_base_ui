import 'package:flutter/material.dart';

class AppContext {
  static final AppContext _instance = AppContext._internal();

  factory AppContext() => _instance;

  AppContext._internal();

  BuildContext? _context;

  void setContext(BuildContext context) {
    _context = context;
  }

  BuildContext? get context => _context;

  bool get isContextInitialized => _context != null; // Check if context is initialized
}

final appContext = AppContext().context;

class AppContextTheme {}
