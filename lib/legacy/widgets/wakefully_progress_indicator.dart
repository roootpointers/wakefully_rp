import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../custom_colors.dart';

class WakefullyProgressIndicator extends StatelessWidget {
  final double size;
  const WakefullyProgressIndicator({super.key, this.size = 50});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SpinKitFadingCircle(
      color: CustomColors.anxiousTeal_0,
      size: size,
    ));
  }
}
