import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LongPressDurationGestureDectector extends StatelessWidget {
  final Widget? child;
  final Duration duration;
  final VoidCallback onLongPress;

  const LongPressDurationGestureDectector({
    super.key,
    this.child,
    required this.duration,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return RawGestureDetector(
      gestures: <Type, GestureRecognizerFactory>{
        LongPressGestureRecognizer:
            GestureRecognizerFactoryWithHandlers<LongPressGestureRecognizer>(
          () => LongPressGestureRecognizer(duration: duration),
          (instance) => instance.onLongPress = onLongPress,
        ),
      },
      child: child,
    );
  }
}
