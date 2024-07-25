import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';

import '../custom_colors.dart';

class OutlinedInputField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool obscureText;
  final TextInputType? keyboardType;
  final int? maxLength;
  final TextAlign? textAlign;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool isEnabled;
  final Color enabledBorderColor;
  final Color disabledBorderColor;

  const OutlinedInputField({
    super.key,
    this.hintText,
    this.errorText,
    this.onChanged,
    this.onSubmitted,
    this.textInputAction,
    this.focusNode,
    this.obscureText = false,
    this.keyboardType,
    this.maxLength,
    this.textAlign,
    this.suffixIcon,
    this.controller,
    this.isEnabled = true,
    this.validator,
    this.enabledBorderColor = CustomColors.anxiousTeal_0,
    this.disabledBorderColor = CustomColors.anxiousTeal20,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: isEnabled,
      style: GoogleFonts.openSans(
        color: CustomColors.calmGrey_0,
        fontSize: 17.0.fsp,
      ),
      validator: validator,
      controller: controller,
      textAlign: textAlign ?? TextAlign.start,
      maxLength: maxLength,
      keyboardType: keyboardType,
      obscureText: obscureText,
      enableSuggestions: !obscureText,
      autocorrect: !obscureText,
      focusNode: focusNode,
      textInputAction: textInputAction,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        counterText: '',
        errorText: errorText,
        errorMaxLines: 2,
        contentPadding: EdgeInsets.symmetric(
          vertical: 8.fh,
          horizontal: 16.0.fw,
        ),
        isDense: true,
        border: _getBorder(),
        focusedBorder: _getBorder(
          color: enabledBorderColor,
          focused: true,
        ),
        enabledBorder: _getBorder(color: enabledBorderColor),
        disabledBorder: _getBorder(color: disabledBorderColor),
        errorBorder: _getBorder(color: enabledBorderColor),
        focusedErrorBorder: _getBorder(
          color: enabledBorderColor,
          focused: true,
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.openSans(
          color: CustomColors.gray4,
          fontSize: 17.0.fsp,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4.fsp,
        ),
      ),
    );
  }

  OutlineInputBorder _getBorder({Color? color, bool focused = false}) {
    final double width = focused ? 2.0 : 1.0;
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      borderSide: color == null
          ? BorderSide(width: width)
          : BorderSide(color: color, width: width),
    );
  }
}
