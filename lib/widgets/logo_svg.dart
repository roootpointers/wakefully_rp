import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources.dart';

class LogoSvg extends StatelessWidget {
  const LogoSvg({super.key});

  @override
  Widget build(context) {
    return SvgPicture.asset(Resources.images.logoSvg);
  }
}
