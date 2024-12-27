import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/ui/common/app_colors.dart';

class AppToast {
  static void show({
    required BuildContext context,
    required String message,
    Color backgroundColor = kColorLightBackgroundWhite,
    Color textColor = kColorLightTextPrimary,
    Duration duration = const Duration(seconds: 3),
    double borderRadius = 8.0,
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    double bottomOffset = 50.0,
  }) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) {
        return _ToastOverlay(
          message: message,
          backgroundColor: backgroundColor,
          textColor: textColor,
          duration: duration,
          borderRadius: borderRadius,
          padding: padding,
          bottomOffset: bottomOffset,
        );
      },
    );

    overlay.insert(overlayEntry);

    Future.delayed(duration + const Duration(milliseconds: 300), () {
      overlayEntry.remove();
    });
  }
}

class _ToastOverlay extends StatefulWidget {
  final String message;
  final Color backgroundColor;
  final Color textColor;
  final Duration duration;
  final double borderRadius;
  final EdgeInsets padding;
  final double bottomOffset;

  const _ToastOverlay({
    required this.message,
    required this.backgroundColor,
    required this.textColor,
    required this.duration,
    required this.borderRadius,
    required this.padding,
    required this.bottomOffset,
  });

  @override
  State<_ToastOverlay> createState() => _ToastOverlayState();
}

class _ToastOverlayState extends State<_ToastOverlay> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _fadeIn();
    _fadeOut();
  }

  void _fadeIn() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) setState(() => _opacity = 1.0);
    });
  }

  void _fadeOut() {
    Future.delayed(widget.duration, () {
      if (mounted) setState(() => _opacity = 0.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: widget.bottomOffset,
      left: 20.0,
      right: 20.0,
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 300),
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: widget.padding,
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.circular(kSizeFixedLG),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Text(
              widget.message,
              style: TextStyle(
                color: widget.textColor,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
