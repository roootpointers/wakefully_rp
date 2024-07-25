import 'package:flutter/material.dart';

class ConstrainedScrollView extends StatelessWidget {
  final Widget child;

  const ConstrainedScrollView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: [SliverFillRemaining(hasScrollBody: false, child: child)]);
  }
}
