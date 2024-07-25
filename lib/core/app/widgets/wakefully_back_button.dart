import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources.dart';

class WakefullyBackButton extends StatelessWidget {
  const WakefullyBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: IconButton(
          onPressed: () => context.router.popForced(),
          icon: SvgPicture.asset(Resources.icons.chevronLeft)),
    );
  }
}
