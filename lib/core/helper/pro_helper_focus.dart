import 'package:flutter/material.dart';

class ProHelperFocus {
  /// Removes focus from the currently focused widget.
  static void unfocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  /// Requests focus on the given [FocusNode].
  static void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  /// Moves focus to the next [FocusNode] in the focus tree.
  static void focusNext(BuildContext context) {
    FocusScope.of(context).nextFocus();
  }

  /// Moves focus to the previous [FocusNode] in the focus tree.
  static void focusPrevious(BuildContext context) {
    FocusScope.of(context).previousFocus();
  }
}
