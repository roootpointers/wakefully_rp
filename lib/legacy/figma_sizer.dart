import 'package:sizer/sizer.dart';

const double figmaWidth = 375.0;
const double figmaHeight = 667.0;

extension FigmaSizerExt on num {
  double get fh => (this / figmaHeight * 100).h;

  double get fw => (this / figmaWidth * 100).w;

  double get fsp => this * (SizerUtil.width / figmaWidth);
}
