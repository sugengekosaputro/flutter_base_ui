import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/core/pro_colors.dart';
import 'package:flutter_ecommerce_tokoto/core/widgets/pro_text.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';

class ProOtp extends StatefulWidget {
  final int otpLength;
  final ValueChanged<String> onCompleted;
  final bool setError;
  final String? errorMessage;
  final InputDecoration? decoration; // Optional decoration

  const ProOtp({
    Key? key,
    required this.otpLength,
    required this.onCompleted,
    this.setError = false,
    this.errorMessage,
    this.decoration, // Allow customization of the decoration
  }) : super(key: key);

  @override
  State<ProOtp> createState() => _ProOtpState();
}

class _ProOtpState extends State<ProOtp> {
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
        color: kColorTransparent,
        width: 1.0,
      ),
    );
  }

  OutlineInputBorder _errorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(kSizeFixedSM),
      borderSide: const BorderSide(
        color: ProColors.redDark2,
        width: 1.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final inputDecoration = widget.decoration ??
        InputDecoration(
          filled: true,
          fillColor: kColorLightFormFilled,
          contentPadding: const EdgeInsets.all(kSizeFixedSM),
          border: _defaultBorder(),
          enabledBorder: widget.setError ? _errorBorder() : _defaultBorder(),
          focusedBorder: widget.setError ? _errorBorder() : _defaultBorder(),
          errorBorder: _errorBorder(),
        );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.otpLength, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSizeFixedXS),
              child: SizedBox(
                width: 48,
                child: TextFormField(
                  controller: _controllers[index],
                  focusNode: _focusNodes[index],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  maxLength: 1,
                  decoration: inputDecoration.copyWith(counterText: ''),
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
            child: ProText(
              widget.errorMessage ?? 'Invalid OTP entered! Please try again.',
              style: ProTextStyles.bodyMedium(context)?.copyWith(color: kColorLightTextError),
            ),
          ),
      ],
    );
  }
}
