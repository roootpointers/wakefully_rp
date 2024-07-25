import 'package:flutter/material.dart';

import '../resources.dart';

class Logo extends StatelessWidget {
  final double height;
  final double width;

  const Logo({super.key, this.height = 80, this.width = 80});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Resources.images.logo),
            fit: BoxFit.fill,
          ),
        ));
  }
}
