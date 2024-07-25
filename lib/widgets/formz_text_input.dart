import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';
import 'package:wakefully_analyzer/widgets/formz_input_with_error_text.dart';

import '../legacy/custom_colors.dart';

class FormzTextInput extends StatelessWidget {
  final TextInputType keyboardType;
  final String? label;
  final String? helperText;
  final FormzInputWithErrorText input;
  final ValueChanged<String>? onChanged;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final double borderRadius;
  final Key? textFieldKey;
  final Color? focusColor;
  final Color? borderColor;
  final TextStyle? labelStyle;
  final TextStyle? textStyle;
  final Color? cursorColor;
  final Color? counterColor;
  final int maxLines;
  final bool alignLabelWithHint;
  final String? hintText;
  final FloatingLabelBehavior floatingLabelBehavior;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? hintStyle;
  final int? maxLength;
  final TextAlign? textAlign;
  final TextInputAction? textInputAction;
  final bool enableSuggestions;
  final bool autocorrect;
  final void Function(String)? onSubmitted;

  final Color enabledBorderColor;
  final Color disabledBorderColor;

  FormzTextInput(
    this.input, {
    super.key,
    this.keyboardType = TextInputType.text,
    this.label,
    this.helperText,
    this.onChanged,
    this.suffixIcon,
    this.inputFormatters,
    this.obscureText = false,
    this.borderRadius = 30,
    this.textFieldKey,
    this.focusColor,
    this.borderColor,
    this.labelStyle,
    this.textStyle,
    this.cursorColor = CustomColors.anxiousTeal_0,
    this.maxLines = 1,
    this.alignLabelWithHint = false,
    this.hintText,
    this.floatingLabelBehavior = FloatingLabelBehavior.never,
    this.contentPadding,
    this.hintStyle,
    this.maxLength,
    this.counterColor,
    this.textAlign,
    this.enableSuggestions = true,
    this.enabledBorderColor = CustomColors.anxiousTeal_0,
    this.disabledBorderColor = CustomColors.anxiousTeal20,
    this.textInputAction,
    this.autocorrect = true,
    this.onSubmitted,
  });

  final TextStyle defaultTextStyle = GoogleFonts.openSans(
    color: CustomColors.calmGrey_0,
    fontSize: 17.0.fsp,
  );
  final TextStyle defaultHintStyle = GoogleFonts.openSans(
    color: CustomColors.gray4,
    fontSize: 17.0.fsp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4.fsp,
  );

  @override
  Widget build(BuildContext context) {
    var initialValue = input.value;

    return TextFormField(
      initialValue: initialValue,
      cursorColor: cursorColor,
      key: textFieldKey,
      keyboardType: keyboardType,
      obscureText: obscureText,
      autocorrect: autocorrect && !obscureText,
      enableSuggestions: enableSuggestions && !obscureText,
      textAlign: textAlign ?? TextAlign.start,
      textCapitalization: TextCapitalization.none,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        isDense: true,
        labelText: label,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(
          vertical: 8.fh,
          horizontal: 16.0.fw,
        ),
        hintStyle: hintStyle ?? defaultHintStyle,
        alignLabelWithHint: alignLabelWithHint,
        floatingLabelBehavior: floatingLabelBehavior,
        helperText: helperText,
        errorMaxLines: 3,
        errorText: (!input.isPure && input.isNotValid)
            ? '$label ${input.errorText}'
            : null,
        labelStyle: labelStyle ?? defaultHintStyle,
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
        suffixIcon: suffixIcon,
      ),
      maxLines: maxLines,
      style: textStyle ?? defaultTextStyle,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
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
