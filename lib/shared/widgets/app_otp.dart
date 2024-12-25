import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/app_colors.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';
import 'package:flutter_ecommerce_tokoto/shared/widgets/app_text.dart';
import 'package:flutter_ecommerce_tokoto/themes/input.dart';

import 'dart:developer';

import 'package:flutter/material.dart';

class AppOtp extends StatefulWidget {
  final int otpLength;
  final ValueChanged<String> onCompleted;
  final bool setError;
  final String? errorMessage;

  const AppOtp({
    Key? key,
    required this.otpLength,
    required this.onCompleted,
    this.setError = false,
    this.errorMessage,
  }) : super(key: key);

  @override
  State<AppOtp> createState() => _AppOtpState();
}

class _AppOtpState extends State<AppOtp> {
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(widget.otpLength, (index) => TextEditingController());
    _focusNodes = List.generate(widget.otpLength, (index) => FocusNode());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_focusNodes.isNotEmpty) {
        _focusNodes[0].requestFocus();
      }
    });
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onOtpChange() {
    final otp = _controllers.map((controller) => controller.text).join();

    if (otp.length == widget.otpLength) {
      // Call onCompleted and pass the OTP
      widget.onCompleted(otp);
    }
  }

  OutlineInputBorder _defaultBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.transparent,
        width: 1.0,
      ),
    );
  }

  OutlineInputBorder _errorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 1.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.otpLength, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: SizedBox(
                width: 40,
                child: TextField(
                  controller: _controllers[index],
                  focusNode: _focusNodes[index],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  maxLength: 1,
                  decoration: InputDecoration(
                    counterText: '',
                    filled: true,
                    fillColor: const Color(0xffdee2e6),
                    contentPadding: const EdgeInsets.all(8.0),
                    border: _defaultBorder(),
                    enabledBorder: widget.setError ? _errorBorder() : _defaultBorder(),
                    focusedBorder: widget.setError ? _errorBorder() : _defaultBorder(),
                    errorBorder: _errorBorder(),
                  ),
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      if (index < widget.otpLength - 1) {
                        _focusNodes[index + 1].requestFocus();
                      }
                    } else {
                      if (index > 0) {
                        _focusNodes[index - 1].requestFocus();
                      }
                    }
                    _onOtpChange();
                  },
                ),
              ),
            );
          }),
        ),
        if (widget.setError)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              widget.errorMessage ?? 'Invalid OTP entered! Please try again.',
              style: const TextStyle(color: Colors.red, fontSize: 14),
            ),
          ),
      ],
    );
  }
}
