import 'package:flutter/widgets.dart';
import 'package:styled_text/styled_text.dart';

Map<String, StyledTextTagBase> addGlobalTags(TextStyle style) {
  return {
    "b": StyledTextTag(
      style: style.copyWith(
        fontWeight: FontWeight.w900,
      ),
    ),
    "i": StyledTextTag(
      style: style.copyWith(
        fontStyle: FontStyle.italic,
      ),
    ),
  };
}
