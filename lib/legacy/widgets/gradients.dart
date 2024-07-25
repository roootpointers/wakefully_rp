import 'package:flutter/widgets.dart';

import '../custom_colors.dart';

class CustomGradients {
  CustomGradients._();

  static Gradient happyGradient = const SweepGradient(
    tileMode: TileMode.decal,
    colors: [
      CustomColors.happyGradient_1,
      CustomColors.happyGradient_2,
      CustomColors.happyGradient_1,
    ],
  );

  static Gradient excitedGradient = const SweepGradient(
    tileMode: TileMode.decal,
    colors: [
      CustomColors.excitedGradient_1,
      CustomColors.excitedGradient_2,
      CustomColors.excitedGradient_1,
    ],
  );

  static Gradient angryGradient = const SweepGradient(
    tileMode: TileMode.decal,
    colors: [
      CustomColors.angryGradient_1,
      CustomColors.angryGradient_2,
      CustomColors.angryGradient_1,
    ],
  );

  static Gradient anxiousGradient = const SweepGradient(
    tileMode: TileMode.decal,
    colors: [
      CustomColors.anxiousGradient_1,
      CustomColors.anxiousGradient_2,
      CustomColors.anxiousGradient_1,
    ],
  );

  static Gradient sadGradient = const SweepGradient(
    tileMode: TileMode.decal,
    colors: [
      CustomColors.sadGradient_1,
      CustomColors.sadGradient_2,
      CustomColors.sadGradient_1,
    ],
  );

  static Gradient calmGradient = const SweepGradient(
    tileMode: TileMode.decal,
    colors: [
      CustomColors.calmGradient_1,
      CustomColors.calmGradient_2,
      CustomColors.calmGradient_1,
    ],
  );
}
