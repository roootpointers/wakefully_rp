import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  final String assetName;

  const SvgIcon(this.assetName, {super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assetName);
  }
}
